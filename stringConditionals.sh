#!/bin/sh

echo "hello"

if [ "abcd" == "aBcd" ]
then
  echo "Equal!"
fi

echo "moving on..."

echo "--------------------"

if [ "abcd" != "aBcd" ]
then
  echo "Different!"
fi

echo "FIN"

echo "-------------------"

read -sp "Type password to know file name: " password

if [ $password == "Table1X" ]
then
  echo "Correct. The file name is: catfile.txt"
else
  echo "incorrect"
  exit
fi

echo "---------------------"

echo "Type something:"
read str
# wrap string variable in "" to avoid errors when they contain spaces
if [ -z "$str" ]; then
  echo "this is an empty string"
  exit
fi
echo "moving on..."
