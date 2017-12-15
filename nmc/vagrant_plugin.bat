@echo off
cd /d %~dp0

rem --------
rem -------- vagrantプラグイン導入
rem --------

echo vagrantプラグイン導入

vagrant plugin install vagrant-vbguest
vagrant vbguest --status

vagrant plugin install vagrant-cachier

echo vagrantプラグイン導入が完了しました。
