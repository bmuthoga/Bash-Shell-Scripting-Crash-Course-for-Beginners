#!/bin/sh

# Function

getFile() {
  local str="$1"
  local file="$2"

  # echo "the string you are looking for is: $str "
  # echo "the file you are searching is: $file "

  # grep -ni $str $file

  check=$(grep -ni "$str" "$file")

  if [ -z "$check" ]
  then
    echo "### Empty! ###"
  else
    echo "FOUND!"
    local fileName=$(basename "$file")

    cp "$file" destinationFolder/"$fileName"
    echo " " >> destinationFolder/"$fileName"
    echo "*-------##****" >> destinationFolder/"$fileName"
    echo "$check" >> destinationFolder/"$fileName"
  fi
}

########################## Whole Program #########################
rm -r ./destinationFolder
mkdir ./destinationFolder

for folder in $(find . -type d)
do
  if [ "$folder" != "./destinationFolder" ]
  then
    echo " ************* THE FOLDER IS $folder ***************** "

    for i in $folder/*
    do
      if [ -f "$i" ]
      then
        # echo "  the file inside is: $i"

        getFile "num" "$i"
      fi
    done

    # echo "---------------------------"
    # echo " "
  fi
  echo "---------------------------"
done
########################## Whole Program #########################
