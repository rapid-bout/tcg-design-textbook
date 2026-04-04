#!/usr/bin/env bash
# Markdown の基本的な検証を行う
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
CHAPTERS_DIR="${REPO_ROOT}/chapters"
ERRORS=0

# 全章ファイルが存在するか確認
EXPECTED_FILES=(
  00_preface.md
  part1_intro.md ch00.md ch01.md ch02.md ch03.md
  part2_intro.md ch04.md ch05.md ch06.md ch07.md
  part3_intro.md ch08.md ch09.md ch10.md
  part4_intro.md ch11.md ch12.md
  part5_intro.md ch13.md ch14.md ch15.md
  part6_intro.md ch16.md ch17.md
  appendix_a.md appendix_b.md
)

for file in "${EXPECTED_FILES[@]}"; do
  if [[ ! -f "${CHAPTERS_DIR}/${file}" ]]; then
    echo "MISSING: ${file}" >&2
    ERRORS=$((ERRORS + 1))
  fi
done

# 各ファイルが空でないか確認
for file in "${CHAPTERS_DIR}"/*.md; do
  if [[ ! -s "$file" ]]; then
    echo "EMPTY: $(basename "$file")" >&2
    ERRORS=$((ERRORS + 1))
  fi
done

# 壊れたMarkdownリンクの簡易チェック（章内相互参照）
for file in "${CHAPTERS_DIR}"/*.md; do
  # [text](chapters/xxx.md) 形式のリンクがあれば、参照先を確認
  while IFS= read -r link; do
    target="${CHAPTERS_DIR}/${link}"
    if [[ ! -f "$target" ]]; then
      echo "BROKEN LINK: $(basename "$file") -> ${link}" >&2
      ERRORS=$((ERRORS + 1))
    fi
  done < <(grep -oP '\]\(chapters/\K[^)]+' "$file" 2>/dev/null || true)
done

if [[ $ERRORS -gt 0 ]]; then
  echo "検証失敗: ${ERRORS} 件のエラー" >&2
  exit 1
fi

echo "検証OK: 全 ${#EXPECTED_FILES[@]} ファイル"
