#!/bin/sh
set -e

echo "## Running PHP Syntax Checker (lint) on ${var}"
phpcs --standart=PSR1 ./index.php

exit "${?}"