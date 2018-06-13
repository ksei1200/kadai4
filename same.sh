#!/bin/bash

if [ $# -ne 2 ]; then # 引数の数が2でない場合(not equal)
 echo "input 2 argments" # エラーメッセージ
 exit 1 # 終了ステータス 
fi
expr $1 + $2 > /dev/null 2>&1 # exprに数字以外を渡すと終了ステータスが2以上になる
if [ $? -ge 2 ]; then # その場合
 echo "input natural number" # エラーメッセージ
 exit 1 # 終了ステータス
fi
if [ $1 -eq $2 ]; then # ここから本編、一致していたら
echo "$1 is equal to $2" # 一致してるメッセージ
else
echo "$1 is not equal to $2" # 一致してないメッセージ
fi
 
