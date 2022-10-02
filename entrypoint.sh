#!/bin/sh
set -e

#for file in $(ls)
#do
#  echo "## Running PHP Syntax Checker (lint) on ${file}"
#if [ -d "$file" ] && [ "$file" != "bitrix" ]
#then
#phpcs -n --standard=PSR1,PSR12 "${file}/"
#elif [ -f "$file" ] && [[ $file == *.php ]]
#then
#phpcs -n --standard=PSR1,PSR12 "./${file}"
#fi
#done

phpcs -n --standard=PSR1,PSR12 $(ls)

#echo "## Running PHP Syntax Checker (lint) on ${var}"
#phpcs --standard=PSR1,PSR12

exit "${?}"