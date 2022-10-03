#!/bin/sh
set -e

if [ -z "$1" ]; then
  IGNORE_DIR=false
else
  IGNORE_DIR="$1"
fi

echo "phpcs -n --standard=PSR1,PSR12 --ignore=${IGNORE_DIR} --report=full --extensions=php $(ls)"

phpcs -n --standard=PSR1,PSR12 --ignore="${IGNORE_DIR}" --report=full --extensions=php $(ls)

#echo "## Running PHP Syntax Checker (lint) on ${var}"
#phpcs --standard=PSR1,PSR12

exit "${?}"