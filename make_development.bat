@echo off
cd /d %~dp0

echo 開発環境の構築を開始しますか？ [Y/N]
echo ※エラーが出ても泣かないこと。



choice /n

if errorlevel 2 goto :end

@rem '####### 仮想環境の選択

echo "※vagrantは1.8以降を使用する必要があります。続ける場合は構築する環境の番号を入力してください [A/N]"
echo "A : CentOS7, nginx , MariaDB, cakephp"

choice /c:NA

if errorlevel 2 goto nmc
if errorlevel 1 goto end

echo aaaaaaaaaaaaa
pause >nul

rem --------
rem -------- 終了処理
rem --------
:end
echo 開発環境の構築を開始しませんでした。
pause >nul
exit

rem --------
rem -------- A環境選択時
rem --------
:nmc
echo you selected CentOS7, nginx , MariaDB, cakephp.
set DIR=nmc
goto :make


rem --------
rem -------- vagrantプラグイン導入
rem --------
:make
echo vagrantプラグイン導入

vagrant plugin install vagrant-vbguest
vagrant vbguest --status

vagrant plugin install vagrant-cachier

echo vagrant 起動
cd %DIR%
vagrant up



echo 処理が完了しました。
pause >nul
