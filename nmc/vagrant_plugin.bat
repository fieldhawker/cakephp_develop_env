@echo off
cd /d %~dp0

rem --------
rem -------- vagrant�v���O�C������
rem --------

echo vagrant�v���O�C������

vagrant plugin install vagrant-vbguest
vagrant vbguest --status

vagrant plugin install vagrant-cachier

echo vagrant�v���O�C���������������܂����B
