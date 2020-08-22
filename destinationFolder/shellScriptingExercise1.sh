#!/bin/sh

isDivisible() {
  echo "Enter a number"
  read num

  if [ $((num % 2)) -eq 0 ] 
  then
    echo "The number is divisible by 2"
  elif [ $((num % 3)) -eq 0 ] 
  then
    echo "The number is divisible by 3"
  elif [ $((num % 5)) -eq 0 ] 
  then
    echo "The number is divisible by 5"
  else
    echo "None of the above"
  fi
}

echo "program start"

isDivisible

echo "program end"

# Solution
divisible() {
  local num=$1
  echo "you wrote $num"

  for i in {2,3,5}
  do
    if [ $(( num % i )) -eq 0 ]
    then
      echo "your number $num is divisible by $i"
    fi
  done
}

divisible 24
 
*-------##****
4:  echo "Enter a number"
5:  read num
7:  if [ $((num % 2)) -eq 0 ] 
9:    echo "The number is divisible by 2"
10:  elif [ $((num % 3)) -eq 0 ] 
12:    echo "The number is divisible by 3"
13:  elif [ $((num % 5)) -eq 0 ] 
15:    echo "The number is divisible by 5"
29:  local num=$1
30:  echo "you wrote $num"
34:    if [ $(( num % i )) -eq 0 ]
36:      echo "your number $num is divisible by $i"
