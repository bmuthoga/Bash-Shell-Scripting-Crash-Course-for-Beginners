#!/bin/sh

# Solution
numFiles() {
  local count=0

  for i in ./*.txt
  do
    count=$((count + 1))
  done

  echo "Total .txt files: $count"
}

echo "program start"

numFiles

echo "program end"
