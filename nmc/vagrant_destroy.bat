@echo off
cd /d %~dp0

rem --------
rem -------- vagrant destroy 実行
rem --------

echo vagrant destroy 実行

vagrant destroy
vagrant box remove CentOS7

echo 処理が完了しました。
pause >nul
