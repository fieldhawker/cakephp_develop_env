@echo off
cd /d %~dp0

rem --------
rem -------- vagrant destroy ŽÀs
rem --------

echo vagrant destroy ŽÀs

vagrant destroy
vagrant box remove CentOS7

echo ˆ—‚ªŠ®—¹‚µ‚Ü‚µ‚½B
pause >nul
