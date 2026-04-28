#!/bin/bash
set -e

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
REPO_ROOT=$(git rev-parse --show-toplevel 2>/dev/null || echo "$SCRIPT_DIR/..")

npx opennextjs-cloudflare build

npx opennextjs-cloudflare deploy

