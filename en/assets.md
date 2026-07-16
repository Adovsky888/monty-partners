# Monty Affiliate - Asset Pack

> # [🇷🇺 Русский](../ru/assets.md) · 🇬🇧 English · [🇰🇷 한국어](../ko/assets.md) · [🇨🇳 中文](../zh/assets.md) · [🇪🇸 Español](../es/assets.md)

Brand assets for partner creators: statics (SVG + ready-made PNG, RU / EN) + finished videos (`video/`, up to 5 languages).

**The mark and logo are official, straight from Monty's brand pack.** Composites (stories, end cards, carousel, QR) are built on that same real mark (monkey + play button). No homemade characters.

## Brand tokens

| | |
|---|---|
| Banana Punch (hero) | `#FFD21E` |
| Ink Black | `#161512` (Ink70 `#4A4843`, Ink40 `#9A958C`) |
| Cream (background) | `#FBF7EF` (Paper `#FFFFFF`, Cream Line `#EAE3D6`) |
| Monty Violet (the AI magic) | `#6C4DF6` |
| Stop Red | `#F0432E` |
| Display font | Space Grotesk 700 (tracking -2%) |
| Body font | Inter |
| Wordmark | `monty`, lowercase |
| Mascot | geometric monkey + play, NO "cute" eyes |

The 60/30/10 rule: ~60% Cream, ~30% Ink, ~10% banana + violet. Text on banana is always Ink Black.

## Files

| File | What | Size |
|---|---|---|
| `mark.svg` / `mark-dark.svg` | official mark (light / dark background) | 128 |
| `icon.svg` | head icon | - |
| `logo-light-bg.svg` | lockup for light backgrounds | 470×140 |
| `logo-dark-bg.svg` | lockup for dark backgrounds | 470×140 |
| `banana.svg` | banana element | - |
| `story-frame-ru/en.svg` | story overlay 9:16 + video slot + CTA | 1080×1920 |
| `cta-endcard-ru/en.svg` | reel end card (dark) | 1080×1920 |
| `carousel-cover-ru/en.svg` | post / carousel cover | 1080×1080 |
| `qr-card-ru/en.svg` | QR card for your ref link (real QR) | 1080×1350 |
| `qr-example.svg` | bare QR to `monty.fast/r/YOUR_CODE` | 29 modules |
| `watermark-corner-light/dark.svg` | corner watermark on free-tier exports, "Made with monty" | 420×72 |
| `watermark-endcard-ru/en.svg` | free-tier outro end card (monty.fast) | 1080×1920 |
| `perk-ladder-ru/en.svg` | tier perk-ladder poster (for recruiting partners) | 1080×1650 |
| `promo-hero-ru/en.svg` | promo hero banner "prompt → reel → auto-post" + ref link (phone + floating feature pills) | 1600×900 |

`mark.svg`, `logo-*.svg`, `icon.svg`, `banana.svg` are official brand files. Don't redraw them, don't change proportions.

## Videos (`video/`)

Monty brand videos, ready to post as they are. Each comes in two orientations: `-horizontal` = 1920×1080 (YouTube / X / web), `-vertical` = 1080×1920 (Reels / Shorts / TikTok / Stories). H.264 + AAC.

| Folder | Video | Length | Languages | About |
|---|---|---|---|---|
| `video/what-monty/` | WhatMonty (hero) | ~22s | en ru | Feature promo, 5 beats. Runs as the hero on monty.fast and partner.monty.fast |
| `video/how-monty-works/` | How Monty works | ~36s | en ru es ko zh | Product explainer: idea → script → shoot → edit → auto-post in ~4 min |
| `video/how-to-record/` | How to record | ~38s | en ru es ko zh | 4 shooting tips for creators filming on a phone (kinetic typography) |

Naming: `<video>-<language>-<orientation>.mp4`.

Language rule: `ru` for Russian-speaking audiences, `en` for everyone else (es / ko / zh for those local markets).

## Placeholders (replace before you post)

- `ТВОЙ_КОД` / `YOUR_CODE` → your personal partner code
- QR cards ship pointing at `YOUR_CODE` - regenerate them for your own code (command below)

## Regenerate the QR for your code

```bash
python3 - <<'PY'
import qrcode
q=qrcode.QRCode(border=0, error_correction=qrcode.constants.ERROR_CORRECT_M)
q.add_data("https://monty.fast/r/CODE_HERE"); q.make(fit=True)
q.make_image().save("qr-CODE_HERE.png")
PY
```
(needs `pip3 install qrcode pillow`)

## PNGs for social

Every `.svg` ships with a same-named `.png` next to it - use that one. Instagram, TikTok, Telegram and most editors won't open SVG.

Composites (story frames, end cards, carousel, QR cards, promo banner) are rendered at their native size: `story-frame-en.png` = 1080×1920, and so on. The mark, logo and banana are upscaled (`mark.png` = 1024×1024, `logo-*.png` = 1880×560) - enough for an avatar or for print. Transparent background wherever the SVG had one.

SVG is the source for edits (open in Figma with Space Grotesk installed). After editing an SVG, rebuild the PNG:
```bash
scripts/svg2png.sh                      # all assets
scripts/svg2png.sh assets/mark.svg      # a single file
```
Needs Chrome and `brew install pngquant`; the script finds Space Grotesk on its own.
---

Affiliate terms: the partner signup page on monty.fast.
Kit copy: [🇷🇺 RU](../ru/promo-kit.md) · [🇬🇧 EN](../en/promo-kit.md) · [🇰🇷 KO](../ko/promo-kit.md) · [🇨🇳 ZH](../zh/promo-kit.md) · [🇪🇸 ES](../es/promo-kit.md)
