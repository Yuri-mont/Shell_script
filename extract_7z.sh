#!/bin/bash
echo " "
cd $1 #path to dir

for file in *
do
  if echo "$file" | grep -q "\.7z$"; then
    7za e "$file"
  fi
done
