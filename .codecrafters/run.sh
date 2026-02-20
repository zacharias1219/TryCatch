#!/bin/sh
#
# Build script to run the AI Coding Assistant
#

set -e # Exit on failure

SCRIPT_DIR="$(dirname "$0")"

# This is done to exclude pwd from the python's path variable
# This prevents accidentally launching a module if it's present inside pwd
PYTHONSAFEPATH=1 PYTHONPATH="$SCRIPT_DIR" exec uv run \
  --project "$SCRIPT_DIR" \
  --quiet \
  -m app.main \
  "$@"