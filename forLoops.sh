#!/bin/sh

for i in {1,2,3,4}
do
  echo "hello this is the number $i"
done

for i in {1..7}
do
  echo "hello this is the number $i"
done

for i in {1,"dog",-5,"hello","something",-98}
do
  echo "hello this is the value: $i"
done

for i in {1,"dog","danger","hello","something",-98}
do
  echo "hello this is the value: $i"

  if [ $i == "danger" ] 
  then
    echo "stopping loop"
    break
  fi
done

# to loop over files
for i in ./*
do
  echo "name of file is $i"
done

echo "we continue..."
