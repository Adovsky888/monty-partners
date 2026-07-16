# Monty Affiliate - Asset Pack

> # [🇷🇺 Русский](../ru/assets.md) · [🇬🇧 English](../en/assets.md) · [🇰🇷 한국어](../ko/assets.md) · [🇨🇳 中文](../zh/assets.md) · 🇪🇸 Español

Recursos de marca para partners creadores: estáticos (SVG + PNG listos, RU / EN) + vídeos terminados (`video/`, hasta 5 idiomas).

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

## PNG para redes

Junto a cada `.svg` ya hay un `.png` con el mismo nombre - usa ese. Instagram, TikTok, Telegram y la mayoría de editores no abren SVG.

Los compuestos (marcos de stories, tarjetas finales, carrusel, tarjetas QR, banner promo) están renderizados a su tamaño nativo: `story-frame-en.png` = 1080×1920, y así. La marca, el logo y la banana van ampliados (`mark.png` = 1024×1024, `logo-*.png` = 1880×560), suficiente para foto de perfil y para imprenta. Fondo transparente donde el SVG lo tenía.

El SVG es la fuente para editar (ábrelo en Figma con Space Grotesk instalada). Tras editar un SVG, regenera el PNG:
```bash
scripts/svg2png.sh                      # todos los recursos
scripts/svg2png.sh assets/mark.svg      # un solo archivo
```
Necesita Chrome y `brew install pngquant`; la tipografía Space Grotesk la localiza el script.
---

Condiciones de partner: la página de registro en monty.fast.
Textos del kit: [🇷🇺 RU](../ru/promo-kit.md) · [🇬🇧 EN](../en/promo-kit.md) · [🇰🇷 KO](../ko/promo-kit.md) · [🇨🇳 ZH](../zh/promo-kit.md) · [🇪🇸 ES](../es/promo-kit.md)
