#!/bin/sh

rm -r ./destinationFolder
mkdir ./destinationFolder

for folder in $(find . -type d)
do
  if [ "$folder" != "./destinationFolder" ]
  then
    echo " ************* FOLDER $folder ***************** "

    for i in $folder/*
    do
      if [ -f "$i" ]
      then
        echo "  the file inside is: $i"
        check=$(grep -ni "num" "$i")

        if [  -z "$check" ]
        then
          echo "EMPTY"
        else
          echo "KEYWORD FOUND IN FILE"
          fileName=$(basename "$i")
          cp "$i" ./destinationFolder/"$fileName"
          echo " " >> destinationFolder/"$fileName"
          echo "*******" >> destinationFolder/"$fileName"
          echo "$check" >> destinationFolder/"$fileName"
        fi
      fi
    done

    echo "---------------------------"
    echo " "
  fi
done
