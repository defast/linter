#!/bin/sh
set -e

echo "## Running PHP Syntax Checker (lint) on ${var}"
phpcs --standard=PSR1,PHPCS ./index.php

exit "${?}"