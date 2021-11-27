#/bin/bash

if [ -f names.txt ] ; then
  echo File exists.
fi

if [ ! -s zero.txt ] ; then
  echo File exists with zero bytes.
fi

if [ zero.txt -nt names.txt ] ; then
  echo zero.txt is newest then names.txt.
fi

if [ name = name ] ; then
  echo Name is equal.
fi

if [ name1 != name ] ; then
  echo Name is different.
fi

if test a \< b ; then
  echo A is less than B.
fi

echo -n 'Type your name: '
read name

if [[ "$name" = E* ]] ; then
  echo Yes, it starts with E :D
fi

if [[ "$name" = E* ]] && [[ "$name" = *k ]] || [[ "$name" = "Luna" ]] ; then
  echo Authorized access.
fi

