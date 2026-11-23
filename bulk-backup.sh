#!/usr/bin/env bash
set -euo pipefail
vzdump --all --mode snapshot --storage nas-backup --compress zstd --mailto allan@allanso.dk
