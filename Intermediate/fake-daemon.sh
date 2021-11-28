#!/bin/bash

is_running(){

    if [ -e /tmp/$1.pid ];then
      PID=$(cat /tmp/$1.pid)
  	  if ps $PID > /dev/null ; then
        echo There is already an instance of $1 been executed.
        exit 1
   	  fi
    fi
}

clean_up(){
  echo Leaving...
  rm /tmp/$0.pid
  exit 0
}

if [ "$1" == "-d" ];then
  
  is_running $0
  $0 &

else

  is_running $0

  echo $$ > /tmp/$0.pid

  trap clean_up SIGHUP SIGINT SIGQUIT SIGTRAP SIGTERM

  while sleep 1; do
    if [ -e in.txt ]; then
      cat in.txt >> log.txt
      rm in.txt
    fi
  done

fi

