#!/bin/bash
set -e

if [ -z "$1" ]; then
  IGNORE_DIR=false
else
  IGNORE_DIR="$1"
fi

phplint --configuration='/.phplint.yml' ./ --exclude="${IGNORE_DIR}"