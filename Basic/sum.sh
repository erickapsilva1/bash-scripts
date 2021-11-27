#!/bin/bash

if [ "$2" == "" ];then
  echo Missing Parameters.
  exit 1
fi

echo $(( $1 + $2  ))

