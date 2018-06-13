#!/bin/bash

#素数計算ソフト
#学籍番号：18745111
#氏名：川島誠一

#declare -i n
declare -i i
a=2
echo "素数計算"
#echo a=$a
#数字入力＆自然数判断ループ
are -i n
declare -i i
a=2
echo "素数計算"
while [ $a -ge 2 ]
  do
   echo "計算したい自然数を入力して下さい:"
   read n
   expr "$n" + 1 >/dev/null 2>&1
   a=$?
   #echo $a
   #echo $?
  done
#1の素数判断
if [ $n -lt 2 ]; then
 echo "素数です"
#２の素数判断
 elif [ $n = 2 ]; then
  echo "素数です"
#偶数のふるい分け
  elif [ `expr $n % 2` -eq 0 ]; then
   echo "素数ではありません"
  else
#奇数の素数計算
  i=3
while :
 do
  if [ $i -le `expr $n / $i` ]; then
#ループの判断
   # echo i=$i
   # echo n=$n
    if [ `expr $n % $i` -eq 0 ]; then
#奇数で割って素数判断
     echo "素数ではありません"
     break
    else
     i=$((i+2))
    fi
  else
  # echo i2=$i
    echo "素数です"
    break
  fi
  done
fi
