#!/bin/bash

#自然数以外入力排除確認
res=$(echo c | (./18745111.sh)) 
if [ $res = "TRYAGAIN!!" ]; then
 echo "OK1"
else
 echo "NG1"
 exit 1
fi

#素数ではない場合判定
res1=$(echo 10 | (./18745111.sh))
if [ $res1 = "素数ではありません" ]; then
 echo "OK2"
else
 echo "NG2"
 exit 1
fi

#素数の判定
res2=$(echo 3571 | (./18745111.sh))
if [ $res2 = "素数です" ]; then
 echo "OK3"
 exit 0
else
 echo "NG3"
 exit 1
fi
