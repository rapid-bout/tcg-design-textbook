#!/usr/bin/env bash
# 全章を結合して単一の Markdown ファイルを生成する
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
CHAPTERS_DIR="${REPO_ROOT}/chapters"
OUTPUT="${REPO_ROOT}/dist/tcg-design-textbook.md"

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

: > "$OUTPUT"

for file in "${FILES[@]}"; do
  path="${CHAPTERS_DIR}/${file}"
  if [[ ! -f "$path" ]]; then
    echo "ERROR: ${path} が見つかりません" >&2
    exit 1
  fi
  cat "$path" >> "$OUTPUT"
  echo -e "\n" >> "$OUTPUT"
done

echo "ビルド完了: ${OUTPUT}"
echo "$(wc -l < "$OUTPUT") 行"
