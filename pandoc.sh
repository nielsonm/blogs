#!/bin/bash

##########################################
#        Pandoc Conversion script        #
#              Mike Nielson              #
#               @oswebguy                #
##########################################

# TODO Add help and usage examples.

# Read in filename, strip out the file extension for reuse in PanDoc.
rootFN=`rev<<<$1 | cut -f2- -d. | rev $rootFN`
# Output for proofing purposes.
echo "FN: $rootFN"
echo "FN: $rootFN"
echo "$1"

# Calculate word count "Doneness" of blog post.
read words filename <<< $(wc -w $1)
standard=1170
# Calculate percent complete of standard blog length.
percent=`bc <<< "scale=2; ($words/$standard)*100"`
progress=$percent
echo -n "$progress% completed."
# Output that percentage

# Conversion time!
## html for preview in browser
pandoc $1 -o "$rootFN.html"
## docx for import to gDocs, email, etc.
pandoc $1 -o "$rootFN.docx"
## TODO Add PDF support, if possible.
