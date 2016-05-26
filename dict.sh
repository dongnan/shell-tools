#!/bin/bash

word=$1
if [ $# -lt 1 ]
then
    echo '请输入要查的单词:'
    read word
else
    echo "[$word]"
fi

curl -s -e "http://3g.dict.cn/s.php" -A "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:27.0) Gecko/20100101 Firefox/27.0" -H "Host:3g.dict.cn" "http://3g.dict.cn/s.php?q=$word" | perl -n -e '/<span>(.*)<\/span>(.*)<br\/>/ && print "$1 $2\n"'
