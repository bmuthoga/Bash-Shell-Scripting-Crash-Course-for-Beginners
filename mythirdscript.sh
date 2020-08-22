#! /bin/bash

touch 1.txt 2.txt

ls -l > 1.txt

echo "enter prefix for file 1.txt"
read file1Prefix

mv 1.txt ${file1Prefix}1.txt
