#!/bin/sh
set -e

echo "## Running PHP Syntax Checker (lint) on ${var}"
phpcs --standard=PSR1,PSR12

exit "${?}"