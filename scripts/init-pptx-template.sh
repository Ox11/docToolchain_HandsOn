#!/usr/bin/env bash
# Create a Pandoc pptx reference template to restyle in PowerPoint.
#
# Noser corporate colours (taken from noser.com):
#   orange     #FA9400   (accent / headings)
#   dark grey  #404545   (body text)
#   beige      #F6F2ED   (slide background)
#   light blue #B4E3EF   (secondary accent)
#   font       Trade Gothic LT Std  (fallback: Arial Narrow)
set -euo pipefail

cd "$(dirname "$0")/.."
mkdir -p src/docs/pptx

pandoc --print-default-data-file reference.pptx > src/docs/pptx/noser-reference.pptx

cat <<'EOF'
Created src/docs/pptx/noser-reference.pptx

Next: open it in PowerPoint and adjust the Slide Master (View > Slide Master):
  - Background fill        #F6F2ED
  - Title text             #FA9400, Trade Gothic LT Std / Arial Narrow, bold
  - Body text              #404545, 16-18pt
  - Bullet accent          #FA9400
  - Add the Noser logo to the master
Save (keep .pptx), then run: scripts/make-pptx.sh
EOF
