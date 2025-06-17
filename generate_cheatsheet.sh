#!/bin/bash

CATEGORIES_DIR="./categories"
OUTPUT_FILE="Linux_Cheat_Sheet.md"

generate_section() {
  local file="$1"
  local title
  title=$(basename "$file" .txt | tr '[:lower:]' '[:upper:]')
  echo -e "## $title\n" >> "$OUTPUT_FILE"
  echo -e '```bash' >> "$OUTPUT_FILE"
  cat "$file" >> "$OUTPUT_FILE"
  echo -e '```\n' >> "$OUTPUT_FILE"
}

# Reset output file
echo "# 🐧 Linux Command Cheat Sheet" > "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

if [ $# -eq 0 ]; then
  # No args: include all
  for file in "$CATEGORIES_DIR"/*.txt; do
    generate_section "$file"
  done
else
  # Specific categories
  for category in "$@"; do
    file="$CATEGORIES_DIR/$category.txt"
    if [ -f "$file" ]; then
      generate_section "$file"
    else
      echo "⚠️ Warning: '$category' not found"
    fi
  done
fi

echo "✅ Cheat sheet generated in $OUTPUT_FILE"

