#!/usr/bin/env bash
set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"
npm exec --yes corepack@0.36.0 -- pnpm install --frozen-lockfile --prod --silent >/dev/null
npm exec --yes corepack@0.36.0 -- pnpm run build >/dev/null
exec node build/index.js
