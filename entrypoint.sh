#!/bin/sh
set -e

echo "## Running PHP Syntax Checker (lint) on ${var}"
phpcs --standard=PSR1 ./index.php

exit "${?}"