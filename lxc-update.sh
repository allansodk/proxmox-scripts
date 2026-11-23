#!/usr/bin/env bash
set -euo pipefail
for id in $(pct list | awk 'NR>1{print $1}'); do
  echo "== CT $id =="; pct exec "$id" -- bash -c "apt-get update && apt-get -y upgrade" || true
done
