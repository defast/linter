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

# Preparing the beginning and end of the commits that will be analyzed
commit_end="git rev-parse --abbrev-ref HEAD"
commit_begin="git rev-parse -q --verify origin/${commit_end}"

if [ -z "$commit_begin" ]; then
    commit_begin=ORIGIN_MASTER
fi

# Call noverify
noverify check\
    --git=.git\
    --git-commit-from=$commit_begin\
    --git-commit-to=$commit_end\
    --git-work-tree=.\

exit "${?}"