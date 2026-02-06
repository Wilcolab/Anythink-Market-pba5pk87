#!/usr/bin/env bash
set -euo pipefail

# Check if log file argument is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <log_file_path>"
  exit 1
fi

LOG_FILE="$1"

# Check if file exists
if [ ! -f "$LOG_FILE" ]; then
  echo "Error: File not found: $LOG_FILE"
  exit 1
fi

echo "Creating backup archive from $LOG_FILE"

# Create archive in root directory
tar -czf /backup.tar.gz "$LOG_FILE"

echo "Backup created at /backup.tar.gz"
