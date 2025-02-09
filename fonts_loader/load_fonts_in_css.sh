#!/bin/bash
set -euo pipefail
IFS=$' \n\t'
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

FONTS_CSS_TEMPLATE="$DIR/fonts_css_template.txt"
FINAL_TEXT_TO_INCLUDE_IN_SVG="$DIR/final_text_to_include_in_svg.txt"
FONTS_CSS_FILE="$DIR/fonts.css"

echo "converting $1 to $2"

# First we need to prepare what needs to be loaded into the svg.
# This is done by replacing OHtFGivqhAswi with the actual font css.
sed "/OHtFGivqhAswi/e cat $FONTS_CSS_FILE" "$FONTS_CSS_TEMPLATE" | sed 's/OHtFGivqhAswi//' > "$FINAL_TEXT_TO_INCLUDE_IN_SVG"

# Now we can load this template into the actual svg.
# cp because we might be reading and writing from the same file.
# cI0WWZKD2UKEj is the string to replace later on
cp <(sed -E 's/(<svg [^>]+>)/\1\ncI0WWZKD2UKEj\n/' "$1" | sed "/cI0WWZKD2UKEj/e cat $FINAL_TEXT_TO_INCLUDE_IN_SVG" | sed 's/cI0WWZKD2UKEj//') "$2"
