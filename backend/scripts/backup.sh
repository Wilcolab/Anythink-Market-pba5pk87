#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 <log_file>"
    exit 1
fi
tar -czf /backup.tar.gz "$1"
echo "Success! Archive created at /backup.tar.gz"
