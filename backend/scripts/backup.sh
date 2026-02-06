#!/usr/bin/env bash

set -e

LOG_FILE=$1

tar -czf /backup.tar.gz "$LOG_FILE"
