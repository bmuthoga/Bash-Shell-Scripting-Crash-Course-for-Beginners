#!/bin/sh

# condition to check if a file exists

myFile=2.txt
if [ -e $myFile ]
then
  echo "$myFile exists"
fi

# negate a condition
if [ ! -e $myFile ] 
then
  echo "$myFile does not exist"
fi

# condition to check if a file is a directory

if [ -d $myFile ]
then
  echo "$myFile is a directory"
else
  echo "$myFile is not a directory"
fi

# condition to check if a file is readable

if [ -r $myFile ]
then
  echo "$myFile is readable"
else
  echo "$myFile is not readable"
fi

# condition to check if a file is writable

if [ -w $myFile ]
then
  echo "$myFile is writable"
else
  echo "$myFile is not writable"
fi

# condition to check if a file is executable

if [ -x $myFile ]
then
  echo "$myFile is executable"
else
  echo "$myFile is not executable"
fi

# condition to check if a file is not empty

if [ -s $myFile ]
then
  echo "$myFile is not empty"
else
  echo "$myFile is empty"
fi

# condition to check if a file is a regular file

if [ -f $myFile ]
then
  echo "$myFile is a regular file"
else
  echo "$myFile is not a regular file"
fi
