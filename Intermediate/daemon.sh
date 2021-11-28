#!/bin/bash

is_running(){
    if [ -e /tmp/$1.pid ];then
      PID=$(cat /tmp/$1.pid)
  	  if ps $PID > /dev/null ; then
        return 0
   	  fi
    fi
    return 1
}

clean_up(){
  rm /tmp/$0.pid
  exit 0
}

runtask(){
  trap clean_up SIGHUP SIGINT SIGQUIT SIGTRAP SIGTERM

  while sleep 1; do
    if [ -e in.txt ]; then
      cat in.txt >> log.txt
      rm in.txt
    fi
  done
}

start_daemon(){
    if ! is_running $1; then
      $1 &
    fi
}

stop_daemon(){
    if is_running $1; then
      kill -15 $PID
      sleep 1
    fi
}

status_daemon(){
    if is_running $0; then
      echo $0 is running.
    else
      echo $0 is not running.
    fi
}

case $1 in

  status)
	status_daemon
  ;;

  start)  
	start_daemon $0
  ;;
  
  restart)
	stop_daemon $0
	start_daemon $0
  ;;

  stop)
	stop_daemon $0
  ;;

  "")
    is_running $0
    echo $$ > /tmp/$0.pid
    runtask
  ;;

esac



