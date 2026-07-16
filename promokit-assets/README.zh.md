# Monty Affiliate — Asset Pack

> # [🇷🇺 Русский](README.md) · [🇬🇧 English](README.en.md) · [🇰🇷 한국어](README.ko.md) · 🇨🇳 中文 · [🇪🇸 Español](README.es.md)

给合作伙伴创作者的品牌素材：静态文件（SVG，RU / EN）+ 成片（`video/`，最多 5 种语言）。

**图标和标志是官方文件，来自 Monty 品牌包。** 合成物（快拍、片尾卡、九宫格、二维码）也用的是同一个真实图标（猴子 + 播放键）。没有自造角色。

## 品牌 token

| | |
|---|---|
| Banana Punch（主色） | `#FFD21E` |
| Ink Black | `#161512`（Ink70 `#4A4843`，Ink40 `#9A958C`） |
| Cream（背景） | `#FBF7EF`（Paper `#FFFFFF`，Cream Line `#EAE3D6`） |
| Monty Violet（AI 的魔法） | `#6C4DF6` |
| Stop Red | `#F0432E` |
| 标题字体 | Space Grotesk 700（字距 -2%） |
| 正文字体 | Inter |
| 文字标 | `monty`，小写 |
| 吉祥物 | 几何猴子 + 播放键，不要"卖萌"的眼睛 |

60/30/10 规则：约 60% Cream，约 30% Ink，约 10% 香蕉 + 紫色。香蕉底上的文字一律用 Ink Black。

## 文件

| 文件 | 内容 | 尺寸 |
|---|---|---|
| `mark.svg` / `mark-dark.svg` | 官方图标（浅色 / 深色背景） | 128 |
| `icon.svg` | 头像图标 | - |
| `logo-light-bg.svg` | 浅色背景锁定组合 | 470×140 |
| `logo-dark-bg.svg` | 深色背景锁定组合 | 470×140 |
| `banana.svg` | 香蕉元素 | - |
| `story-frame-ru/en.svg` | 快拍覆盖层 9:16 + 视频位 + CTA | 1080×1920 |
| `cta-endcard-ru/en.svg` | 短视频片尾卡（深色） | 1080×1920 |
| `carousel-cover-ru/en.svg` | 帖子 / 九宫格封面 | 1080×1080 |
| `qr-card-ru/en.svg` | 推荐链接二维码卡（真实二维码） | 1080×1350 |
| `qr-example.svg` | 只有二维码，指向 `monty.fast/r/YOUR_CODE` | 29 模块 |
| `watermark-corner-light/dark.svg` | 免费版导出的角标水印 "Made with monty" | 420×72 |
| `watermark-endcard-ru/en.svg` | 免费版片尾卡（monty.fast） | 1080×1920 |
| `perk-ladder-ru/en.svg` | 等级权益阶梯海报（用于招募伙伴） | 1080×1650 |
| `promo-hero-ru/en.svg` | 推广主视觉横幅 "提示词 → 成片 → 自动发布" + 推荐链接（手机 + 漂浮功能标签） | 1600×900 |

`mark.svg`、`logo-*.svg`、`icon.svg`、`banana.svg` 是官方品牌文件。不要重画，也不要改比例。

## 视频（`video/`）

可以直接发布的 Monty 品牌成片。每条都有两种画幅：`-horizontal` = 1920×1080（YouTube / X / 网站），`-vertical` = 1080×1920（Reels / Shorts / 抖音 / 快拍）。H.264 + AAC。

| 文件夹 | 视频 | 时长 | 语言 | 内容 |
|---|---|---|---|---|
| `video/what-monty/` | WhatMonty（主视觉） | ~22 秒 | en ru | 功能推广片，5 个节拍。monty.fast 和 partner.monty.fast 的头图片 |
| `video/how-monty-works/` | How Monty works | ~36 秒 | en ru es ko zh | 产品讲解：想法 → 脚本 → 拍摄 → 剪辑 → 自动发布，约 4 分钟 |
| `video/how-to-record/` | How to record | ~38 秒 | en ru es ko zh | 给用手机拍摄的创作者的 4 条建议（动态排版） |

命名：`<视频>-<语言>-<画幅>.mp4`。

语言规则：俄语受众用 `ru`，其他人用 `en`（es / ko / zh 对应各自市场）。

## 占位符（发布前替换）

- `ТВОЙ_КОД` / `YOUR_CODE` → 你的专属伙伴码
- 二维码卡出厂时指向 `YOUR_CODE` - 用下面的命令按你的码重新生成

## 用你的码重新生成二维码

```bash
python3 - <<'PY'
import qrcode
q=qrcode.QRCode(border=0, error_correction=qrcode.constants.ERROR_CORRECT_M)
q.add_data("https://monty.fast/r/CODE_HERE"); q.make(fit=True)
q.make_image().save("qr-CODE_HERE.png")
PY
```
（需要 `pip3 install qrcode pillow`）

## 导出社交平台用的 PNG

SVG 是源文件（在装了 Space Grotesk 的 Figma 里打开）。导出 PNG：
```bash
pip3 install cairosvg
python3 -c "import cairosvg; cairosvg.svg2png(url='story-frame-en.svg', write_to='story-frame-en.png', output_width=1080)"
```
没装 Space Grotesk 的话文字会回退到系统字体 - 导出前先装字体，或者直接在 Figma 里渲染。

---

伙伴条款：monty.fast 上的伙伴注册页。
文案：`../AFFILIATE-PROMOKIT-EN.md`（EN），`../AFFILIATE-PROMOKIT.md`（RU）。
