#!/usr/bin/env bash
# Build the single-slide PowerPoint from the AsciiDoc overview.
set -euo pipefail

cd "$(dirname "$0")/.."

SRC=build/docbook/doctoolchain-overview.xml
OUT=doctoolchain-overview.pptx
REF=src/docs/pptx/noser-reference.pptx

./dtcw docker generateDocbook

ARGS=(-f docbook -t pptx "$SRC" -o "$OUT" --slide-level=2)
if [ -f "$REF" ]; then
    ARGS+=(--reference-doc="$REF")
else
    echo "No reference template at $REF - using Pandoc defaults."
    echo "Create one with: scripts/init-pptx-template.sh"
fi

pandoc "${ARGS[@]}"
echo "Created $OUT"
