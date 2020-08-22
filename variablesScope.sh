#!/bin/sh

myfunction() {
  var1="Eggs"
  local var2="Salad"

  echo "var1 inside function is: $var1"
  echo "var2 inside function is: $var2"
}

echo "program start"

myfunction

echo " "

echo "var1 outside function is: $var1"
echo "var2 outside function is: $var2"
