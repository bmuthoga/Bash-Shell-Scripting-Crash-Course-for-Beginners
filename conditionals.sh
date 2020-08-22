#!/bin/sh

# 3 -eq 3   3 = 3
# 3 -ne 4   3 is not equal to 4
# 3 -gt 1   3 > 1
# 3 -lt 7   3 < 7
# 3 -ge 3   3 >= 3
# 3 -le 3   3 <= 3

echo "hello..."

if [ 3 -eq 5 ] 
then
  echo "yes they are the same"
fi

echo "Enter your age"
read age

if [ $age -gt 100 ] 
then
  echo "you're older"
else
  echo "you're younger"
fi

echo "enter num"
read num

if [ $num == "1" ] 
then
  echo "typed 1"
elif [ $num == "2" ] 
then
  echo "typed 2"
elif [ $num == "3" ] 
then
  echo "typed 3"
elif [ $num == "4" ] 
then
  echo "typed 4"
else
  echo "none of the above"
fi

echo "Enter age again"
read age2

if [ $age2 -lt 0 ]; then
  echo "You cannot have a negative age"
  exit
fi

echo "continue with our program"
echo "bye"
