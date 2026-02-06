#!/usr/bin/env bash

set -e

# Check argument
if [ $# -eq 0 ]; then
  echo "Usage: $0 <log_file>"
  exit 1
fi

LOG_FILE="$1"

# Verify file exists
if [ ! -f "$LOG_FILE" ]; then
  echo "File not found: $LOG_FILE"
  exit 1
fi

# Always create archive in repo root
REPO_ROOT="$(git rev-parse --show-toplevel)"
tar -czf "$REPO_ROOT/backup.tar.gz" "$LOG_FILE"
