#!/usr/bin/env bash
set -euo pipefail

# Local CurseForge export helper for Arcane Dungeon Tech
# Prerequisites: packwiz installed and on PATH

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

if ! command -v packwiz >/dev/null 2>&1; then
  echo "ERROR: packwiz not found on PATH."
  echo "Install with: go install github.com/packwiz/packwiz@latest"
  exit 1
fi

OUTPUT="${1:-ArcaneDungeonTech-curseforge.zip}"

echo "==> Refreshing Packwiz index..."
packwiz refresh

echo "==> Exporting CurseForge pack to: $OUTPUT"
packwiz curseforge export -o "$OUTPUT"

if [[ ! -f "$OUTPUT" ]]; then
  echo "ERROR: Export failed — $OUTPUT not created."
  exit 1
fi

echo "==> Done."
ls -lh "$OUTPUT"
echo
echo "Import this zip in CurseForge App:"
echo "  Create Custom Profile → Import → select $OUTPUT"
