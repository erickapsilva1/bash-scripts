#!/bin/bash

source ./form-functions.sh

tput clear

tput setaf 0
tput setab 6

echo "                                 Personal Data                                 "
blank_line
print_field "    Name: "
print_field "   Email: " 
print_field "Password: " 
blank_line
blank_line
echo "                                                                               "

read_field 2 13 name
read_field 3 13 email
read_field 4 13 password -s

tput cup 9 0
tput sgr0
echo
echo "Collected data: ' $name / $email / $password."
