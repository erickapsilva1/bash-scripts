#!/bin/bash

tput clear

#tput setaf 0;echo color 0
#tput setaf 1;echo color 1
#tput setaf 2;echo color 2
#tput setaf 3;echo color 3
#tput setaf 4;echo color 4
#tput setaf 5;echo color 5
#tput setaf 6;echo color 6
#tput setaf 7;echo color 7

tput setaf 0
tput setab 6

echo "                                 Personal Data                                 "
echo " $(tput setab 0)                                                                             $(tput setab 6) "
echo " $(tput setab 0;tput setaf 7;tput bold)     Name:  $(tput setab 7)                                                                $(tput setab 0) $(tput setab 6) "
echo " $(tput setab 0)    Email: $(tput setab 7)                                                                 $(tput setab 0) $(tput setab 6) "
echo " $(tput setab 0) Password: $(tput setab 7)                                                                 $(tput setab 0) $(tput setab 6) "
echo " $(tput setab 0)                                                                             $(tput setab 6) "
echo " $(tput setab 0)                                                                             $(tput setab 6) "
echo "                                                                               "

tput cup 2 12
read name

tput cup 3 12
read email

tput cup 4 12
read -s password

echo
echo
echo
echo
echo "Collected data: ' $name / $email / $password."
