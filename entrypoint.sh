#!/bin/sh
set -e



for file in $(ls)
do
  echo "## Running PHP Syntax Checker (lint) on ${file}"
if [ -d "$file" ]
then
phpcs --standard=PSR1,PSR12 $file
elif if [[ $file == *.txt ]]
then
phpcs --standard=PSR1,PSR12 $file
fi
done


#echo "## Running PHP Syntax Checker (lint) on ${var}"
#phpcs --standard=PSR1,PSR12

exit "${?}"