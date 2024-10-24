#!/bin/sh
set -eu

# Arguments: input file, tag 1, tag 2
path=$1
old_tag=$2
new_tag=$3

if [ ! -e "$path" ]; then
  echo "Path does not exist: $path"
  exit 1
fi

find "${path}" -type f -exec \
    sed -i "s/\\b${old_tag}\\b/${new_tag}/g" {} \;

echo "Replaced all references of '${old_tag}' with '${new_tag}' in '${path}'"
