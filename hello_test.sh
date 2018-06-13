#!/bin/sh

result=$(./hello.sh)
if [ $result = "hello" ] ; then
  echo "OK"
else
echo "NG"

fi
# 実行結果をansに
# resultの中身がhelloなら # OK
# そうでないなら
# NG
