#!/bin/bash

# Get the absolute path of the repository root
REPO_ROOT=$(git rev-parse --show-toplevel)

# Create the archive in the repo root
# $1 is the log file passed as an argument
tar -czf "$REPO_ROOT/backup.tar.gz" "$1"