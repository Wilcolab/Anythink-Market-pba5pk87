#!/bin/bash

# Check if the log file path was provided as an argument
if [ -z "$1" ]; then
  echo "Error: Please provide the path to the log file."
  echo "Usage: ./backup.sh <log_file_path>"
  exit 1
fi

LOG_FILE=$1

# Archive and compress the log file to /backup.tar.gz
# Note: In some environments, writing to the root (/) requires sudo
tar -czf /backup.tar.gz "$LOG_FILE"

echo "Log file $LOG_FILE has been backed up to /backup.tar.gz"