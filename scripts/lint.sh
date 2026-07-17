#!/usr/bin/env bash
# Markdown の基本的な検証を行う
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
CHAPTERS_DIR="${REPO_ROOT}/chapters"
ERRORS=0

resolve_path() {
  local source="$1"
  local link="$2"
  local source_dir
  local target_dir
  local target_base

  source_dir="$(cd "$(dirname "$source")" && pwd -P)"
  target_dir="$(dirname "$link")"
  target_base="$(basename "$link")"

  target_dir="$(cd "${source_dir}/${target_dir}" 2>/dev/null && pwd -P)" || return 1
  printf '%s/%s\n' "$target_dir" "$target_base"
}

# 全章ファイルが存在するか確認
EXPECTED_FILES=(
  00_preface.md
  intro.md
  part1_intro.md ch01.md ch02.md ch03.md
  part2_intro.md ch04.md ch05.md ch06.md ch07.md ch08.md
  part3_intro.md ch09.md ch10.md
  part4_intro.md ch11.md ch12.md ch13.md
  part5_intro.md ch14.md ch15.md
  part6_intro.md ch16.md ch17.md
  appendix_a.md appendix_b.md appendix_c.md appendix_d.md colophon.md
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

# 壊れた Markdown リンクの簡易チェック（README を含む repo 内の全 Markdown）
while IFS= read -r file; do
  while IFS= read -r link; do
    link="${link%%#*}"
    [[ -z "$link" ]] && continue

    case "$link" in
      http://*|https://*|mailto:*)
        continue
        ;;
    esac

    if ! target="$(resolve_path "$file" "$link")"; then
      echo "BROKEN LINK: ${file#${REPO_ROOT}/} -> ${link}" >&2
      ERRORS=$((ERRORS + 1))
      continue
    fi

    if [[ ! -e "$target" ]]; then
      echo "BROKEN LINK: ${file#${REPO_ROOT}/} -> ${link}" >&2
      ERRORS=$((ERRORS + 1))
    fi
  done < <(perl -ne 'while(/\[[^\]]+\]\(([^)]+)\)/g){print "$1\n"}' "$file")
done < <(
  find "$REPO_ROOT" \
    \( -path "$REPO_ROOT/.git" -o -path "$REPO_ROOT/.idea" -o -path "$REPO_ROOT/dist" -o -path "$REPO_ROOT/node_modules" -o -path "$REPO_ROOT/.vivliostyle" -o -path "$REPO_ROOT/output" -o -path "$REPO_ROOT/build" \) -prune \
    -o -name '*.md' -print
)

if [[ $ERRORS -gt 0 ]]; then
  echo "検証失敗: ${ERRORS} 件のエラー" >&2
  exit 1
fi

echo "検証OK: 全 ${#EXPECTED_FILES[@]} ファイル"
