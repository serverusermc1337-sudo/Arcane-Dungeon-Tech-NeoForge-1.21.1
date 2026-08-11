#!/usr/bin/env bash
set -euo pipefail

# Export one work-pack as a CurseForge zip
# Usage: ./scripts/export-work-pack.sh create-factory

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <pack-folder-name>"
  echo "Available:"
  ls -1 work-packs | grep -v README.md || true
  exit 1
fi

PACK_NAME="$1"
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PACK_DIR="$ROOT_DIR/work-packs/$PACK_NAME"
OUT_DIR="$ROOT_DIR/exports"

if [[ ! -d "$PACK_DIR" ]]; then
  echo "ERROR: Pack folder not found: $PACK_DIR"
  exit 1
fi

if ! command -v packwiz >/dev/null 2>&1; then
  echo "ERROR: packwiz not found on PATH"
  exit 1
fi

mkdir -p "$OUT_DIR"
cd "$PACK_DIR"

echo "==> Refreshing $PACK_NAME"
packwiz refresh

OUT_FILE="$OUT_DIR/${PACK_NAME}-curseforge.zip"
echo "==> Exporting to $OUT_FILE"
packwiz curseforge export -o "$OUT_FILE"

ls -lh "$OUT_FILE"
echo "Import this zip in CurseForge App as a custom profile."
