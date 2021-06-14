#!/usr/bin/env bash

set -euo pipefail

readonly PREVENT_BRANCH="main"
readonly CURRENT_BRANCH=`git rev-parse --abbrev-ref HEAD`

if [ "$CURRENT_BRANCH" = "$PREVENT_BRANCH" ]; then
  echo -e "You CAN'T commit directly to \`$PREVENT_BRANCH\` branch..."
  echo -e "Please create a new branch for your work!\n"
  exit 1
fi
