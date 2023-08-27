#!/bin/bash

# Rename all files in the current directory to their sha1 sum while also maintaining their original
# file extension (if applicable).
#
# Code is based off of the answer provided by Adam Gross at
# https://stackoverflow.com/questions/5042138/script-to-rename-files-using-a-sha1-hash-of-their-filename

for file in ./*; do
	hash=$(sha1sum ${file} | cut -d ' ' -f1)
	extension=${file##*.}
	f_name=${hash}.${extension}
	mv ${file} ${f_name}
done
