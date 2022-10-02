#!/bin/sh
set -e

if [ -z "$1" ]; then
  DIR_TO_SCAN="."
else
  DIR_TO_SCAN="$1"
fi


if [ ! -d "${DIR_TO_SCAN}" ] && [ ! -f "${DIR_TO_SCAN}" ]; then
  echo "\nInvalid directory or file: ${DIR_TO_SCAN}"
  echo "\n\n"

  exit 2
fi


echo "## Running PHP Syntax Checker (lint) on ${var}"
noverify check --exclude-checks='unused' --allow-checks='arraySyntax' --index-only-files='./bitrix' ${DIR_TO_SCAN}



exit "${?}"
