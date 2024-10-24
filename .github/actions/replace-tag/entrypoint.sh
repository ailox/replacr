#!/bin/sh

# Arguments: input file, tag 1, tag 2
file=$1
old_tag=$2
new_tag=$3

if [ ! -f "$file" ]; then
  echo "File not found: $file"
  exit 1
fi

sed -i "s/\b$old_tag\b/$new_tag/g" "${file}"
echo "Replaced '${old_tag}' with '${new_tag}' in ${file}"
