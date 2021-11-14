#!/bin/bash

blank_line(){
	echo " $(tput setab 0)                                                                             $(tput setab 6) "
}
print_field(){
	echo " $(tput setab 0;tput setaf 7;tput bold) $1 $(tput setab 7)                                                                $(tput setab 0) $(tput setab 6) "
}

read_field(){
	tput setab 7
	tput setaf 0
	tput cup $1 $2
	read $4 $3
	while [ "${!3}" ==  "" ]; do
		tput cup $1 $2
		tput setaf 2
		echo -n "Please, type a valid value."
		read -n 1
		tput cup $1 $2
		tput setaf 0
		echo -n "                                                 "
		tput cup $1 $2
		read $4 $3
	done
}

tput clear

#tput setaf 0;echo color 0
#tput setaf 1;echo color 1
#tput setaf 2;echo color 2
#tput setaf 3;echo color 3
#tput setaf 4;echo color 4
#tput setaf 5;echo color 5
#tput setaf 6;echo color 6
#tput setaf 7;echo color 7
