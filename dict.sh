#!/bin/bash

word=$1
if [ $# -lt 1 ]
then
    echo '请输入要查的单词:'
    read word
else
    echo "[$word]"
fi

curl -s -e "http://3g.dict.cn/s.php" -A "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.76 Mobile Safari/537.36" -H "Host:3g.dict.cn" "http://3g.dict.cn/s.php?q=$word" | perl -n -e '/<span>(.*)<\/span>(.*)<br\/>/ && print "$1 $2\n"'
