#!/bin/bash

printf 'Bytes: %i - File name: %s\n' $(ls -l | tail -n +2 | grep -v '^d' | tr -s ' ' | cut -d ' ' -f 5,9)
