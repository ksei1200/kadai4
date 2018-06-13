#!/bin/bash

./world.sh > /tmp/result-$$ # 結果データ $$プロセス番号
echo "hello" > /tmp/ans-$$ # 正解データ(手作り) $$プロセス番号
echo "world" >> /tmp/ans-$$ # 正解データ(手作り) $$プロセス番号
if ( diff /tmp/ans-$$ /tmp/result-$$ ) ; then # 結果が一致しているなら 
  echo "OK" ; exit 0  # 正常終了
else
  echo "NG" ; exit 1  # エラー終了
fi
rm /tmp/asn-$$ /tmp/result-$$  # 後始末
