#!/bin/bash

#素数計算ソフト
#学籍番号：18745111
#氏名：川島誠一

#echo a=$a
#数字入力＆自然数判断ループ
declare -i i

#echo "Please input natural number"
  n=0
  read n
   expr "$n" + 1 > /dev/null 2>&1
  #echo $?
if [ $? -ge 1 ]; then
   echo "TRYAGAIN!!"
   exit 0
  else
  #echo $n
  #echo $? 
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
fi
