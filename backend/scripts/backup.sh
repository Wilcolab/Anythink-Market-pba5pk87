#!/bin/bash

REPO_ROOT=$(git rev-parse --show-toplevel)

tar -czf "$REPO_ROOT/backup.tar.gz" "$1"