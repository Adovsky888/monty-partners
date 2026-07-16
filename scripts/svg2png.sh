#!/usr/bin/env bash
# Renders every assets/*.svg to a same-named PNG.
#
# Chrome headless is the renderer because the SVGs use filters (feTurbulence
# grain, feDropShadow) that lighter rasterisers drop or approximate badly.
# Space Grotesk is injected via @font-face - without it Chrome falls back to
# Arial Black and the layouts reflow.
#
# Usage: scripts/svg2png.sh [file.svg ...]   (no args = all of assets/)
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ASSETS="$ROOT/assets"
CHROME="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"

find_font() {
  [ -n "${MONTY_FONT:-}" ] && { echo "$MONTY_FONT"; return; }
  for c in \
    "$HOME/monty-howto-video/public/SpaceGrotesk-VF.ttf" \
    "$HOME/Library/Fonts/SpaceGrotesk-VF.ttf" \
    "$ROOT/.cache/SpaceGrotesk-VF.ttf"
  do
    [ -f "$c" ] && { echo "$c"; return; }
  done
  mkdir -p "$ROOT/.cache"
  curl -fsSL -o "$ROOT/.cache/SpaceGrotesk-VF.ttf" \
    "https://github.com/google/fonts/raw/main/ofl/spacegrotesk/SpaceGrotesk%5Bwght%5D.ttf"
  echo "$ROOT/.cache/SpaceGrotesk-VF.ttf"
}

[ -x "$CHROME" ] || { echo "Chrome not found at: $CHROME (set CHROME=)" >&2; exit 1; }
FONT="$(find_font)"
command -v pngquant >/dev/null || { echo "pngquant missing: brew install pngquant" >&2; exit 1; }

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
cp "$FONT" "$TMP/font.ttf"

render() {
  local svg="$1" out="${1%.svg}.png"

  read -r w h < <(python3 - "$svg" <<'PY'
import re, sys
vb = re.search(r'viewBox="([\d.\s-]+)"', open(sys.argv[1]).read(2000)).group(1).split()
print(int(float(vb[2])), int(float(vb[3])))
PY
)

  # Small marks get upscaled so they stay usable as avatars / print.
  local scale=1
  if   [ "$w" -lt 130 ];  then scale=8
  elif [ "$w" -lt 600 ];  then scale=4
  elif [ "$w" -lt 1080 ]; then scale=2
  fi

  {
    printf '<!doctype html><meta charset="utf-8"><style>'
    printf '@font-face{font-family:"Space Grotesk";src:url("font.ttf");font-weight:100 900;font-style:normal}'
    printf 'html,body{margin:0;padding:0;background:transparent}svg{display:block}'
    printf '</style>'
    cat "$svg"
  } > "$TMP/page.html"

  "$CHROME" --headless=new --disable-gpu --hide-scrollbars \
    --default-background-color=00000000 \
    --force-device-scale-factor="$scale" \
    --window-size="$w,$h" \
    --screenshot="$out" \
    "file://$TMP/page.html" >/dev/null 2>&1

  pngquant --quality=70-95 --speed 1 --force --ext .png "$out"
  printf '%-32s %sx%s  %s\n' "$(basename "$out")" "$((w*scale))" "$((h*scale))" "$(du -h "$out" | cut -f1)"
}

if [ $# -gt 0 ]; then
  for f in "$@"; do render "$f"; done
else
  for f in "$ASSETS"/*.svg; do render "$f"; done
fi
