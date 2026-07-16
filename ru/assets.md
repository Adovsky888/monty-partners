# Monty Affiliate - Asset Pack

> # 🇷🇺 Русский · [🇬🇧 English](../en/assets.md) · [🇰🇷 한국어](../ko/assets.md) · [🇨🇳 中文](../zh/assets.md) · [🇪🇸 Español](../es/assets.md)

Брендовые ассеты для партнёров-блогеров: статика (SVG + готовые PNG, RU / EN) + готовые ролики (`video/`, до 5 языков).

**Маркет и лого - официальные, из бренд-пакета Monty.** Композиты (сторис/энд-карты/карусель/QR) собраны на том же реальном маркете (обезьяна + play-кнопка). Никаких самодельных персонажей.

## Бренд-токены

| | |
|---|---|
| Banana Punch (геройский) | `#FFD21E` |
| Ink Black | `#161512` (Ink70 `#4A4843`, Ink40 `#9A958C`) |
| Cream (фон) | `#FBF7EF` (Paper `#FFFFFF`, Cream Line `#EAE3D6`) |
| Monty Violet (магия ИИ) | `#6C4DF6` |
| Stop Red | `#F0432E` |
| Шрифт дисплей | Space Grotesk 700 (трекинг -2%) |
| Шрифт текст | Inter |
| Вордмарк | `monty` строчными |
| Маскот | геометрическая обезьяна + play, БЕЗ «милых» глаз |

Правило 60/30/10: ~60% Cream, ~30% Ink, ~10% банан+фиолет. Текст на банане - всегда Ink Black.

## Файлы

| Файл | Что | Размер |
|---|---|---|
| `mark.svg` / `mark-dark.svg` | официальный маркет (свет/тёмн фон) | 128 |
| `icon.svg` | иконка-голова | - |
| `logo-light-bg.svg` | локап для светлого фона | 470×140 |
| `logo-dark-bg.svg` | локап для тёмного фона | 470×140 |
| `banana.svg` | элемент-банан | - |
| `story-frame-ru/en.svg` | оверлей сторис 9:16 + слот видео + CTA | 1080×1920 |
| `cta-endcard-ru/en.svg` | финальная карточка рилса (тёмная) | 1080×1920 |
| `carousel-cover-ru/en.svg` | обложка поста/карусели | 1080×1080 |
| `qr-card-ru/en.svg` | QR-карта на реф-ссылку (реальный QR) | 1080×1350 |
| `qr-example.svg` | голый QR на `monty.fast/r/YOUR_CODE` | 29 модулей |
| `watermark-corner-light/dark.svg` | угловой вотермарк free-экспортов «Made with monty» | 420×72 |
| `watermark-endcard-ru/en.svg` | аутро-энд-кард free-тарифа (monty.fast) | 1080×1920 |
| `perk-ladder-ru/en.svg` | постер перк-лестницы тиров (для рекрута партнёров) | 1080×1650 |
| `promo-hero-ru/en.svg` | геройский промо-баннер «промпт → ролик → автопост» + реф-ссылка (телефон + летающие пилюли фич) | 1600×900 |

`mark.svg`, `logo-*.svg`, `icon.svg`, `banana.svg` - официальные файлы бренда. Не перерисовывать и не менять пропорции.

## Ролики (`video/`)

Брендовые ролики Monty, готовые к постингу как есть. Каждый в двух ориентациях: `-horizontal` = 1920×1080 (YouTube / X / сайт), `-vertical` = 1080×1920 (Reels / Shorts / TikTok / Stories). Кодек H.264 + AAC.

| Папка | Ролик | Длина | Языки | Про что |
|---|---|---|---|---|
| `video/what-monty/` | WhatMonty (hero) | ~22 c | en ru | Промо фич, 5 битов. Стоит героем на monty.fast и partner.monty.fast |
| `video/how-monty-works/` | How Monty works | ~36 c | en ru es ko zh | Продуктовый экплейнер: идея → скрипт → съёмка → монтаж → автопост за ~4 мин |
| `video/how-to-record/` | How to record | ~38 c | en ru es ko zh | 4 совета креатору по съёмке на телефон (кинетик-типографика) |

Имена: `<ролик>-<язык>-<ориентация>.mp4`.

Правило языка при раздаче: русскоязычной аудитории - `ru`, всем остальным - `en` (es / ko / zh - под локальные рынки).

## Плейсхолдеры (заменить перед публикацией)

- `ТВОЙ_КОД` / `YOUR_CODE` → твой персональный код партнёра
- QR-карты сгенерены на `YOUR_CODE` - перегенери под свой код (команда ниже)

## Перегенерить QR под свой код

```bash
python3 - <<'PY'
import qrcode
q=qrcode.QRCode(border=0, error_correction=qrcode.constants.ERROR_CORRECT_M)
q.add_data("https://monty.fast/r/CODE_HERE"); q.make(fit=True)
q.make_image().save("qr-CODE_HERE.png")
PY
```
(нужен `pip3 install qrcode pillow`)

## PNG для соцсетей

Рядом с каждым `.svg` уже лежит готовый `.png` того же имени - брать его. Инстаграм, ТикТок, телеграм и большинство редакторов SVG не открывают.

Композиты (сторис, энд-карты, карусель, QR-карты, промо-баннер) отрендерены в свой нативный размер: `story-frame-ru.png` = 1080×1920 и так далее. Маркет, лого и банан увеличены (`mark.png` = 1024×1024, `logo-*.png` = 1880×560) - хватает на аватарку и на печать. Прозрачный фон там, где он был в SVG.

SVG = источник для правок (открывать в Figma с установленным Space Grotesk). После правки SVG пересобрать PNG:
```bash
scripts/svg2png.sh                      # все ассеты
scripts/svg2png.sh assets/mark.svg      # один файл
```
Нужны Chrome и `brew install pngquant`; Space Grotesk скрипт находит сам.

---

Условия партнёрки: страница регистрации партнёра на monty.fast.
Тексты кита: [🇷🇺 RU](../ru/promo-kit.md) · [🇬🇧 EN](../en/promo-kit.md) · [🇰🇷 KO](../ko/promo-kit.md) · [🇨🇳 ZH](../zh/promo-kit.md) · [🇪🇸 ES](../es/promo-kit.md)
