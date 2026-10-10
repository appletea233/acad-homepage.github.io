#!/usr/bin/env bash
set -euo pipefail
repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$repo_dir"
local_runtime="$repo_dir/../../work/jekyll-runtime/jekyll.sh"
if [[ -x "$local_runtime" ]]; then
  exec "$local_runtime" serve --host 127.0.0.1 --port 4000 --baseurl '' "$@"
fi
exec bundle exec jekyll serve --host 127.0.0.1 --port 4000 --baseurl '' "$@"
