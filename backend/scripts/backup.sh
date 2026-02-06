#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 <log_file>"
    exit 1
fi
tar -czf /backup.tar.gz "$1"
echo "Success! Archive created at /backup.tar.gz"
#!/usr/bin/env bash
set -euo pipefail

# Check if a log file argument was provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <log_file_path>"
  exit 1
fi

LOG_FILE="$1"

# Verify the file exists
if [ ! -f "$LOG_FILE" ]; then
  echo "Error: File not found: $LOG_FILE"
  exit 1
fi

# Create archive in repo root
tar -czf backup.tar.gz "$LOG_FILE"

echo "Backup created: backup.tar.gz"
