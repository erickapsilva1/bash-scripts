#/bin/bash

for v in 0 1 2 3 4 5 6 7 8 9 ; do
  echo $v
done

for v in $(seq 10 10 100) ; do
  echo $v
done

readpass(){
  echo -n "Passwd: "
  read -s passwd
}

readpass

while [ "$passwd" != "secret" ]; do
  echo "Invalid passwd"
  readpass
done

echo ''
