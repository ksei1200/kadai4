#!/bin/bash

echo "input 2 argments" > /tmp/$$-args  # 回答準備:引数の数
echo "input natural number" > /tmp/$$-nat  # 回答準備:数字じゃない

# テスト開始
# test1: 引数の数が足りない
./same.sh > /tmp/$$-ans && exit 1  # 成功してしまう→エラー
diff /tmp/$$-ans /tmp/$$-args && echo " test1 is ok" || exit 1 # エラーメッセージが違う→エラー

# test2: 数字じゃない
./same.sh a b > /tmp/$$-ans && exit 1 # 成功してしまう→エラー
diff /tmp/$$-ans /tmp/$$-nat && echo " test2 is ok " || exit 1 # エラーメッセージが違う→エラー

rm -f /tmp/$$-* # 後始末
