#!/bin/bash

rootFN=`rev<<<$1 | cut -f2- -d. | rev $rootFN`
echo "FN: $rootFN"
echo "FN: $rootFN"
echo "$1"

read words filename <<< $(wc -w $1)
standard=1170

percent=`bc <<< "scale=2; ($words/$standard)*100"`
progress=$percent
#progress='5'
echo -n "$progress% completed."

pandoc $1 -o "$rootFN.html"
pandoc $1 -o "$rootFN.docx"
