#!/bin/sh

# Solution
for i in {1..4}
do
  touch "${i}file.txt"
done

for i in {1..3}
do
  touch "myfile${i}.jpg"
done

echo "Creating files..."
sleep 0.6
ls -l
echo ""

#############################

choice=""
while [ "$choice" != "t" -a "$choice" != "j" ] 
do
  echo "To rename .jpg file press j. To rename .txt file press t:"
  read choice
  echo "You typed $choice"
done

echo "Write prefix to add to these files:"
read pref
echo "The selected prefix is $pref"

if [ "$choice" == "t" ] 
then
  echo "Txt files to be renamed are:"
  ls -l ./*.txt
  echo "Renaming txt files..."

  for element in *.txt
  do
    mv ${element} ${pref}${element}
  done

  sleep 0.6
  echo "Done."
  ls -l ./*.txt
else
  echo "Jpg files to be renamed are:"
  ls -l ./*.jpg
  echo "Renaming jpg files..."

  for element in *.jpg
  do
    mv ${element} ${pref}${element}
  done

  sleep 0.6
  echo "Done."
  ls -l ./*.jpg
fi
