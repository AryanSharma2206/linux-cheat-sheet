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

# Handle --menu option
if [ "$1" == "--menu" ]; then
  echo "Choose a category to generate:"
  options=()
  for f in "$CATEGORIES_DIR"/*.txt; do
    options+=("$(basename "$f" .txt)")
  done

  select opt in "${options[@]}"; do
    if [ -n "$opt" ]; then
      echo "Generating cheat sheet for category: $opt"
      echo "# 🐧 Linux Command Cheat Sheet - $opt" > "$OUTPUT_FILE"
      echo "" >> "$OUTPUT_FILE"
      generate_section "$CATEGORIES_DIR/$opt.txt"
      echo "✅ Cheat sheet generated in $OUTPUT_FILE"
      exit 0
    else
      echo "❌ Invalid option."
    fi
  done
fi

# Handle search mode
if [ "$1" == "search" ]; then
  if [ -z "$2" ]; then
    echo "❌ Please provide a keyword to search."
    exit 1
  fi
  keyword="$2"
  echo -e "# 🔍 Search results for '$keyword':\n"
  grep -Rin --color=always "$keyword" "$CATEGORIES_DIR"
  exit 0
fi

# Reset output file
echo "# 🐧 Linux Command Cheat Sheet" > "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# If no arguments, generate full sheet
if [ $# -eq 0 ]; then
  for file in "$CATEGORIES_DIR"/*.txt; do
    generate_section "$file"
  done
else
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

