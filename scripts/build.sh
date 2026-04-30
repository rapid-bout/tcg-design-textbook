#!/usr/bin/env bash
# 全章を結合して単一 Markdown を生成し、README の目次も更新する
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
CHAPTERS_DIR="${REPO_ROOT}/chapters"
OUTPUT="${REPO_ROOT}/dist/tcg-design-textbook.md"
README="${REPO_ROOT}/README.md"

mkdir -p "$(dirname "$OUTPUT")"

# 結合順序を定義
FILES=(
  00_preface.md
  part1_intro.md
  ch00.md
  ch01.md
  ch02.md
  ch03.md
  part2_intro.md
  ch04.md
  ch05.md
  ch06.md
  ch07.md
  part3_intro.md
  ch08.md
  ch09.md
  ch10.md
  part4_intro.md
  ch11.md
  ch12.md
  part5_intro.md
  ch13.md
  ch14.md
  ch15.md
  part6_intro.md
  ch16.md
  ch17.md
  appendix_a.md
  appendix_b.md
)

# 最初の Markdown 見出しを取得
first_heading() {
  local path="$1"
  sed -n '/^#\{1,2\} /{p;q;}' "$path"
}

# --- 1. 全章結合 ---
: > "$OUTPUT"

for file in "${FILES[@]}"; do
  path="${CHAPTERS_DIR}/${file}"
  if [[ ! -f "$path" ]]; then
    echo "ERROR: ${path} が見つかりません" >&2
    exit 1
  fi
  cat "$path" >> "$OUTPUT"
  printf '\n\n' >> "$OUTPUT"
done

echo "ビルド完了: ${OUTPUT}"
echo "$(wc -l < "$OUTPUT") 行"

# --- 2. README 目次生成 ---
TOC=""
for file in "${FILES[@]}"; do
  path="${CHAPTERS_DIR}/${file}"
  heading="$(first_heading "$path")"
  if [[ -z "$heading" ]]; then
    echo "ERROR: ${path} に見出しがありません" >&2
    exit 1
  fi

  case "$file" in
    00_preface.md)
      # 前書きはスキップ（README 冒頭と重複）
      continue
      ;;
    part*_intro.md)
      # 部の導入: "# 第 X 部 — ..." → セクション見出しとして出力
      title="${heading#\# }"
      TOC+=$'\n'"### ${title}"$'\n'
      ;;
    *)
      # 章・付録: "## タイトル" → リンク付きリストとして出力
      title="${heading#\#\# }"
      TOC+="- [${title}](chapters/${file})"$'\n'
      ;;
  esac
done

# README を生成
cat > "$README" << READMEEOF
# TCG デザインの教科書

> トレーディングカードゲーム／デジタルカードゲーム（TCG/DCG）の設計に関する包括的リファレンス。
> 特定のタイトルに依存しない、一般原則としてまとめている。

## 目次
${TOC}
## ビルド

\`\`\`bash
# 全章を結合して単一ファイルを生成
./scripts/build.sh
\`\`\`

## ライセンス

本書の著作権は著者に帰属します。
READMEEOF

echo "README 更新完了"
