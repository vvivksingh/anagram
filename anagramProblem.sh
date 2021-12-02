#!/bin/bash/ -x

prep() {
   fold -w1 <<< "${1//[^[:alnum:]]/}" | tr '[:upper:]' '[:lower:]' | sort | tr -d '\n'
}


isAnagram() {
   a=$(prep "$1")
   b=$(prep "$2")
   [[ $a = $b ]] && echo "yes" || echo "no";
}

read -p "Enter 1st word : " word1
read -p "Enter 2nd word : " word2

isAnagram "$word1" "$word2"
