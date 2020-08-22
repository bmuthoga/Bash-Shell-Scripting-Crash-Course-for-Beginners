#!/bin/sh

mkdir ./destinationFolder

for myfile in *
do
  if [ -f "$myfile" ]
  then
    check=$(grep -ni "spo" "$myfile")

    if [ -z "$check" ]
    then
      echo "EMPTY"
    else
      echo "FOUND"
      cp "$myfile" ./destinationFolder
      echo "$check" >> "$myfile"
    fi

  else
    echo "$myfile is not a file"
    echo " "
  fi
  echo " ------------------------- "
done
