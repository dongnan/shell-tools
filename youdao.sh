#!/bin/bash

word=$1
if [ $# -lt 1 ]
then
    echo '请输入要查的单词:'
    read word
else
    echo "[$word]"
fi

curl -m 5 -s -e "http://m.youdao.com/dict" -A "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.76 Mobile Safari/537.36" -H "m.youdao.com" "http://m.youdao.com/dict?le=eng&q=$word" | perl -n -e '/<li>([^<]*)<\/li>/ && print "$1\n"'
