@echo off
cd /d %~dp0

rem --------
rem -------- vagrant add 実行
rem --------

echo vagrant add 実行

vagrant box add CentOS7 CentOS-7.1.1503-x86_64-netboot.box

echo vagrant addが完了しました。
