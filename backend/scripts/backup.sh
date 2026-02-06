#!/usr/bin/env bash
set -euo pipefail

# Debug info so CI can see where it is
echo "Running backup script from: $(pwd)"
echo "Listing backend/scripts:"
ls -la backend/scripts || true

# Example placeholder logic (replace with real backup if needed)
echo "Backup script executed successfully"
