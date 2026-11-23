#!/usr/bin/env bash
set -euo pipefail
name="auto-$(date +%Y%m%d-%H%M)"
for id in $(qm list | awk 'NR>1{print $1}'); do qm snapshot "$id" "$name" || true; done
for id in $(pct list | awk 'NR>1{print $1}'); do pct snapshot "$id" "$name" || true; done
