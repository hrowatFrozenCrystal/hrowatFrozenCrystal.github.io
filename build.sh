#!/bin/bash
cp frame.html index.html
grep -hR "#sedLocatable" index.html | while read -r line
do
	file=`cat "sed_locatable/${line:13}"`
	awk -i inplace -v r="$file" "{gsub(/$line/,r)}1" index.html
done
