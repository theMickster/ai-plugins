#!/usr/bin/env bash
set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"
CPV=$(node -p 'require("./package.json").devDependencies.corepack.trim()')
npm exec --yes corepack@"$CPV" -- pnpm install --frozen-lockfile --prod --silent >/dev/null
npm exec --yes corepack@"$CPV" -- pnpm run build >/dev/null
exec node build/index.js
