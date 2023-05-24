#!/bin/bash

cd "/home/Dir"

for file in *.txt; do
    # print the encoding of the file
    echo "$file: $(file -bi "$file")"
done

cd "/home/Dir"

for file in *
do
    if [ -f "$file" ] && [ "$(file -b --mime-encoding "$file")" = "iso-8859-1" ]; then
        iconv -f ISO-8859-1 -t UTF-8 "$file" > "${file%.txt}.utf8.txt"
        mv "${file%.txt}.utf8.txt" "$file"
        echo "Converted $file to UTF-8"
    fi
done

cd "/home/Dir"

for file in *.txt; do
    # print the encoding of the file
    echo "$file: $(file -bi "$file")"
done
