# Monty Affiliate — Asset Pack

> # [🇷🇺 Русский](README.md) · [🇬🇧 English](README.en.md) · [🇰🇷 한국어](README.ko.md) · [🇨🇳 中文](README.zh.md) · 🇪🇸 Español

Recursos de marca para partners creadores: estáticos (SVG, RU / EN) + vídeos terminados (`video/`, hasta 5 idiomas).

**La marca y el logo son oficiales, salen del pack de marca de Monty.** Los compuestos (stories, tarjetas finales, carrusel, QR) están montados sobre esa misma marca real (mono + botón de play). Nada de personajes caseros.

## Tokens de marca

| | |
|---|---|
| Banana Punch (protagonista) | `#FFD21E` |
| Ink Black | `#161512` (Ink70 `#4A4843`, Ink40 `#9A958C`) |
| Cream (fondo) | `#FBF7EF` (Paper `#FFFFFF`, Cream Line `#EAE3D6`) |
| Monty Violet (la magia de la IA) | `#6C4DF6` |
| Stop Red | `#F0432E` |
| Tipografía de display | Space Grotesk 700 (tracking -2%) |
| Tipografía de texto | Inter |
| Wordmark | `monty`, en minúsculas |
| Mascota | mono geométrico + play, SIN ojos "monos" |

Regla 60/30/10: ~60% Cream, ~30% Ink, ~10% banana + violeta. El texto sobre banana siempre en Ink Black.

## Archivos

| Archivo | Qué es | Tamaño |
|---|---|---|
| `mark.svg` / `mark-dark.svg` | marca oficial (fondo claro / oscuro) | 128 |
| `icon.svg` | icono de la cabeza | - |
| `logo-light-bg.svg` | lockup para fondos claros | 470×140 |
| `logo-dark-bg.svg` | lockup para fondos oscuros | 470×140 |
| `banana.svg` | elemento banana | - |
| `story-frame-ru/en.svg` | overlay de story 9:16 + hueco de vídeo + CTA | 1080×1920 |
| `cta-endcard-ru/en.svg` | tarjeta final del reel (oscura) | 1080×1920 |
| `carousel-cover-ru/en.svg` | portada de post / carrusel | 1080×1080 |
| `qr-card-ru/en.svg` | tarjeta QR con tu enlace (QR real) | 1080×1350 |
| `qr-example.svg` | QR a secas a `monty.fast/r/YOUR_CODE` | 29 módulos |
| `watermark-corner-light/dark.svg` | marca de agua de esquina del plan free, "Made with monty" | 420×72 |
| `watermark-endcard-ru/en.svg` | tarjeta final del plan free (monty.fast) | 1080×1920 |
| `perk-ladder-ru/en.svg` | póster de la escalera de tiers (para reclutar partners) | 1080×1650 |
| `promo-hero-ru/en.svg` | banner promo "prompt → reel → autopublicación" + enlace de referido (móvil + píldoras de funciones flotando) | 1600×900 |

`mark.svg`, `logo-*.svg`, `icon.svg`, `banana.svg` son archivos oficiales de marca. No los redibujes ni cambies sus proporciones.

## Vídeos (`video/`)

Vídeos de marca de Monty, listos para publicar tal cual. Cada uno en dos orientaciones: `-horizontal` = 1920×1080 (YouTube / X / web), `-vertical` = 1080×1920 (Reels / Shorts / TikTok / Stories). H.264 + AAC.

| Carpeta | Vídeo | Duración | Idiomas | De qué va |
|---|---|---|---|---|
| `video/what-monty/` | WhatMonty (hero) | ~22 s | en ru | Promo de funciones, 5 golpes. Es el hero de monty.fast y partner.monty.fast |
| `video/how-monty-works/` | How Monty works | ~36 s | en ru es ko zh | Explicativo de producto: idea → guion → grabar → montar → autopublicar en ~4 min |
| `video/how-to-record/` | How to record | ~38 s | en ru es ko zh | 4 consejos de grabación para creadores que graban con el móvil (tipografía cinética) |

Nombres: `<vídeo>-<idioma>-<orientación>.mp4`.

Regla de idioma: `ru` para audiencia rusoparlante, `en` para el resto (es / ko / zh para esos mercados).

## Placeholders (cámbialos antes de publicar)

- `ТВОЙ_КОД` / `YOUR_CODE` → tu código personal de partner
- Las tarjetas QR vienen apuntando a `YOUR_CODE` - regenéralas con tu código (comando abajo)

## Regenerar el QR con tu código

```bash
python3 - <<'PY'
import qrcode
q=qrcode.QRCode(border=0, error_correction=qrcode.constants.ERROR_CORRECT_M)
q.add_data("https://monty.fast/r/CODE_HERE"); q.make(fit=True)
q.make_image().save("qr-CODE_HERE.png")
PY
```
(necesita `pip3 install qrcode pillow`)

## Exportar PNG para redes

El SVG es la fuente (ábrelo en Figma con Space Grotesk instalada). Para PNG:
```bash
pip3 install cairosvg
python3 -c "import cairosvg; cairosvg.svg2png(url='story-frame-en.svg', write_to='story-frame-en.png', output_width=1080)"
```
Sin Space Grotesk instalada el texto cae a una tipografía del sistema: instálala antes de exportar, o renderiza en Figma.

---

Condiciones de partner: la página de registro en monty.fast.
Textos del kit: `../AFFILIATE-PROMOKIT-EN.md` (EN), `../AFFILIATE-PROMOKIT.md` (RU).
