@echo off
cd /d %~dp0

rem --------
rem -------- vagrant destroy ���s
rem --------

echo vagrant destroy ���s

vagrant destroy
vagrant box remove CentOS7

echo �������������܂����B
pause >nul
