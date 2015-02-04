よくあるエラーと対処
================

----

ssh 接続時のエラー
================

エラー::

  $ ssh -i default.pem root@118.67.96.XX
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  @    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!     @
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
  Someone could be eavesdropping on you right now (man-in-the-middle attack)!
  It is also possible that a host key has just been changed.
  The fingerprint for the RSA key sent by the remote host is
  04:b2:7f:d7:61:1a:a4:31:d6:06:18:15:99:f5:a9:9b.
  Please contact your system administrator.
  Add correct host key in /home/student01/.ssh/known_hosts to get rid of this message.
  Offending RSA key in /home/student01/.ssh/known_hosts:3
  RSA host key for 118.67.96.XX has changed and you have requested strict checking.
  Host key verification failed.

対処::

  $ rm ~/.ssh/known_hosts

----

console-log 確認時の注意
================

演習の中でwatchコマンドでコンソールログを確認することがあります。この時、開いているウィンドウが短いとログインプロンプトが表示しきれない場合がありますので、待ち時間が長いと感じたらコンソールを縦に伸ばしてみるか、以下のようにwatchコマンドなしでコンソールログを確認してみてください。

例）::

 ---------ここから---------
 # watch あり
 $ watch -n 10 nova console-log --length 20 studentXX-vm-from-clii
 
 # watch なし
 $ nova console-log --length 20 studentXX-vm-from-cli
 ---------ここまで---------


