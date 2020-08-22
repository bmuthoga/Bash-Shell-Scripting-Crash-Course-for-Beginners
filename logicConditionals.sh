echo "How old are you?"
read age

# OR logic
if [ $age -lt 0 -o $age -gt 999999999 ]
then
  echo "Number not acceptable"
  exit
fi

# AND logic
if [ $age -lt 64 -a $age -gt 26 ]
then
  echo "you are between 26 and 64"
  exit
fi

echo "let us continue"
