#!/bin/bash

##########################################
#        Pandoc Conversion script        #
#              Mike Nielson              #
#               @oswebguy                #
##########################################

# TODO Add help and usage examples.

if [ "$1" == "-h" ] || [ "$1" == "--h" ] || [ "$1" == "--help" ] ; then
  echo "Usage: `basename $0` [-h] file.md"
  exit 0
fi

# Read in filename, strip out the file extension for reuse in PanDoc.
rootFN=`rev<<<$1 | cut -f2- -d. | rev $rootFN`
# Output for proofing purposes.
echo "FN: $rootFN"
echo "Input file:  $1"

# Calculate word count "Doneness" of blog post.
read words filename <<< $(wc -w $1)
standard=1170
# Calculate percent complete of standard blog length.
percent=`bc <<< "scale=2; ($words/$standard)*100"`
percent=`bc <<< "scale=0; $percent/1"`
progress=$percent
# Output that percentage
echo "$progress% completed."

# Conversion time!
## html for preview in browser
pandoc $1 -o "$rootFN.html"
## docx for import to gDocs, email, etc.
pandoc $1 -o "$rootFN.docx"
## TODO Add PDF support, if possible.

# Report back to user
echo "$rootFN.html created."
echo "$rootFN.docx created."
