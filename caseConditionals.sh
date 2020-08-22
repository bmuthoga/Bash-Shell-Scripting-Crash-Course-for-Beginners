#!/bin/sh

echo "select an option..."
echo " type 1 to do A"
echo " type 2 to do B"
echo " type 3 to do C"
echo " type 4 to do D"
read choice

case $choice in
  "hello")
    echo "you typed hello"
    ;;
  *".txt")
    echo "this is a txt file"
    ;;
  1)
    echo "you chose A"
    ;;
  2)
    echo "you chose B"
    ;;
  3)
    echo "you chose C"
    ;;
  4)
    echo "you chose D"
    ;;
  *)
    echo "none of the above"
    ;;
esac

echo "type a character"
read char

case $char in
  [0-9])
    echo "you typed a number"
    ;;
  [a-z])
    echo "you typed a lower case character"
    ;;
  [A-Z])
    echo "you typed an upper case character"
    ;;
  1[2-8])
    echo "you typed a number between 12-18"
    ;;
  [4-5] | [6-7])
    echo "you typed a number between 4-5 OR 6-7"
    ;;
  *)
    echo "none of the above"
    ;;
esac
