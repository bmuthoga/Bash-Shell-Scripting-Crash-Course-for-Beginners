
#!/bin/sh

mydate() {
  echo "today is: "
  date
  echo "gave a great day"
}

hello2() {
  echo "hello $1"
  echo "hello also $2"
  return 35
}

echo "start here"

mydate

echo "----------"

hello2 "firstPerson" "secondPerson"
echo "return value/status of hello2 is $?"

echo "move on..."
