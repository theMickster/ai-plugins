#!/usr/bin/env bash
set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"
corepack pnpm install --frozen-lockfile --silent >/dev/null
corepack pnpm run build >/dev/null
exec node build/index.js
