#!/bin/bash/ -x

prep() {
   fold -w1 <<< "${1//[^[:alnum:]]/}" | tr '[:upper:]' '[:lower:]' | sort | tr -d '\n'
}


isAnagram() {
   a=$(prep "$1")
   b=$(prep "$2")
   [[ $a = $b ]] && echo "Yes, $word1 and $word2 are anagrams " || echo "No, $word1 and $word2 are not anagrams ";
}

read -p "Enter 1st word : " word1
read -p "Enter 2nd word : " word2

isAnagram "$word1" "$word2"

echo "feature branch added"0
echo "added on remote repository"
echo "added on local repository"
echo "pulling and then pushing"
