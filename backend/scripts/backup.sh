#!/bin/bash

# Check if a file argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <log_file>"
  exit 1
fi

LOGFILE=$1
ARCHIVE="/backup.tar.gz"

# Check if the file exists
if [ ! -f "$LOGFILE" ]; then
  echo "Error: File not found: $LOGFILE"
  exit 1
fi

# Create the archive in root directory
tar -czf $ARCHIVE $LOGFILE

echo "Backup created at $ARCHIVE"
