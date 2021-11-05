#!/bin/bash

lynx --source https://www.visie.com.br | grep "<script" | grep "src'" | cut -d"'" -f2 > scripts.txt

sed -e 's/^/lynx --source /' -e 's/$/|md5sum/' scripts.txt | sh > hashes.txt

sed -re 's/https?:\/\/((.*?)\/)//g' scripts.txt

sed -re 's/https?:\/\/visie.com.br\///' -i scripts.txt

sed -e 's/  -//' -i hashes.txt

paste -d' ' hashes.txt scripts.txt > new.txt

diff new.txt old.txt

mv new.txt old.txt
