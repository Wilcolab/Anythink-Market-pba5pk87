#!/bin/bash
# Find the repository root absolute path
REPO_ROOT=$(git rev-parse --show-toplevel)

# Create the archive exactly in the root
tar -czf "$REPO_ROOT/backup.tar.gz" "$1"