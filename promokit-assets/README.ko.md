# Monty Affiliate — Asset Pack

> # [🇷🇺 Русский](README.md) · [🇬🇧 English](README.en.md) · 🇰🇷 한국어 · [🇨🇳 中文](README.zh.md) · [🇪🇸 Español](README.es.md)

파트너 크리에이터용 브랜드 에셋: 정적 파일(SVG, RU / EN) + 완성 영상(`video/`, 최대 5개 언어).

**마크와 로고는 Monty 브랜드 팩에서 온 공식 파일입니다.** 합성물(스토리, 엔드카드, 캐러셀, QR)도 같은 실제 마크(원숭이 + 재생 버튼)로 만들었습니다. 임의로 만든 캐릭터는 없습니다.

## 브랜드 토큰

| | |
|---|---|
| Banana Punch (히어로) | `#FFD21E` |
| Ink Black | `#161512` (Ink70 `#4A4843`, Ink40 `#9A958C`) |
| Cream (배경) | `#FBF7EF` (Paper `#FFFFFF`, Cream Line `#EAE3D6`) |
| Monty Violet (AI의 마법) | `#6C4DF6` |
| Stop Red | `#F0432E` |
| 디스플레이 폰트 | Space Grotesk 700 (자간 -2%) |
| 본문 폰트 | Inter |
| 워드마크 | `monty`, 소문자 |
| 마스코트 | 기하학적 원숭이 + 재생 버튼, "귀여운" 눈은 금지 |

60/30/10 규칙: Cream 약 60%, Ink 약 30%, 바나나 + 바이올렛 약 10%. 바나나 위의 텍스트는 항상 Ink Black.

## 파일

| 파일 | 내용 | 크기 |
|---|---|---|
| `mark.svg` / `mark-dark.svg` | 공식 마크 (밝은 / 어두운 배경) | 128 |
| `icon.svg` | 헤드 아이콘 | - |
| `logo-light-bg.svg` | 밝은 배경용 락업 | 470×140 |
| `logo-dark-bg.svg` | 어두운 배경용 락업 | 470×140 |
| `banana.svg` | 바나나 요소 | - |
| `story-frame-ru/en.svg` | 스토리 오버레이 9:16 + 영상 슬롯 + CTA | 1080×1920 |
| `cta-endcard-ru/en.svg` | 릴스 엔드카드 (다크) | 1080×1920 |
| `carousel-cover-ru/en.svg` | 게시물 / 캐러셀 커버 | 1080×1080 |
| `qr-card-ru/en.svg` | 추천 링크 QR 카드 (실제 QR) | 1080×1350 |
| `qr-example.svg` | `monty.fast/r/YOUR_CODE`로 가는 QR만 | 29 모듈 |
| `watermark-corner-light/dark.svg` | 무료 플랜 내보내기의 코너 워터마크 "Made with monty" | 420×72 |
| `watermark-endcard-ru/en.svg` | 무료 플랜 아웃트로 엔드카드 (monty.fast) | 1080×1920 |
| `perk-ladder-ru/en.svg` | 티어 혜택 사다리 포스터 (파트너 모집용) | 1080×1650 |
| `promo-hero-ru/en.svg` | 프로모 히어로 배너 "프롬프트 → 릴스 → 자동 게시" + 추천 링크 (폰 + 떠다니는 기능 칩) | 1600×900 |

`mark.svg`, `logo-*.svg`, `icon.svg`, `banana.svg`는 공식 브랜드 파일입니다. 다시 그리거나 비율을 바꾸지 마세요.

## 영상 (`video/`)

바로 올릴 수 있는 Monty 브랜드 영상. 각각 두 가지 방향: `-horizontal` = 1920×1080 (YouTube / X / 웹), `-vertical` = 1080×1920 (릴스 / 쇼츠 / 틱톡 / 스토리). H.264 + AAC.

| 폴더 | 영상 | 길이 | 언어 | 내용 |
|---|---|---|---|---|
| `video/what-monty/` | WhatMonty (히어로) | ~22초 | en ru | 기능 프로모, 5개 비트. monty.fast와 partner.monty.fast의 히어로 |
| `video/how-monty-works/` | How Monty works | ~36초 | en ru es ko zh | 제품 설명: 아이디어 → 스크립트 → 촬영 → 편집 → 자동 게시, 약 4분 |
| `video/how-to-record/` | How to record | ~38초 | en ru es ko zh | 폰으로 찍는 크리에이터를 위한 촬영 팁 4가지 (키네틱 타이포그래피) |

파일명: `<영상>-<언어>-<방향>.mp4`.

언어 규칙: 러시아어권에는 `ru`, 그 외에는 `en` (es / ko / zh는 해당 시장용).

## 플레이스홀더 (게시 전에 교체)

- `ТВОЙ_КОД` / `YOUR_CODE` → 본인 파트너 코드
- QR 카드는 `YOUR_CODE`로 만들어져 있습니다 - 본인 코드로 다시 생성하세요 (아래 명령)

## 본인 코드로 QR 다시 만들기

```bash
python3 - <<'PY'
import qrcode
q=qrcode.QRCode(border=0, error_correction=qrcode.constants.ERROR_CORRECT_M)
q.add_data("https://monty.fast/r/CODE_HERE"); q.make(fit=True)
q.make_image().save("qr-CODE_HERE.png")
PY
```
(`pip3 install qrcode pillow` 필요)

## SNS용 PNG 내보내기

SVG가 원본입니다 (Space Grotesk가 설치된 Figma에서 열기). PNG로:
```bash
pip3 install cairosvg
python3 -c "import cairosvg; cairosvg.svg2png(url='story-frame-en.svg', write_to='story-frame-en.png', output_width=1080)"
```
Space Grotesk가 없으면 텍스트가 시스템 폰트로 대체됩니다. 내보내기 전에 폰트를 설치하거나 Figma에서 렌더링하세요.

---

파트너 약관: monty.fast의 파트너 가입 페이지.
키트 카피: `../AFFILIATE-PROMOKIT-EN.md` (EN), `../AFFILIATE-PROMOKIT.md` (RU).
