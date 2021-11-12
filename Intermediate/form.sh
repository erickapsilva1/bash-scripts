#!/bin/bash

echo -n 'Name: '
read name

echo -n 'E-mail: '
read email

echo -n 'Password: '
read -s password

echo
echo "Collected data: ' $name / $email / $password."
