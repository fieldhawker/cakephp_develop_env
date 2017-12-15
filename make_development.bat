@echo off
cd /d %~dp0

echo 開発環境の構築を開始しますか？ [Y/N]
echo ※エラーが出ても泣かないこと。

rem 計測開始
call worktime.bat START

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

:SuccessOrDie
if not %errorlevel% == 0 (
    echo [ERROR] :P
    exit 1
)
exit /b 0

rem --------
rem -------- A環境選択時
rem --------
:nmc
echo you selected CentOS7, nginx , MariaDB, cakephp.
set DIR=nmc
cd %DIR%

goto :make


rem --------
rem -------- vagrant
rem --------
:make

rem call vagrant_add.bat
rem call :SuccessOrDie
rem call vagrant_plugin.bat
rem call :SuccessOrDie
rem call vagrant_up.bat
rem call :SuccessOrDie

cd ../
rem 計測終了
call worktime.bat STOP

rem 表示
call worktime.bat PRINT

echo 開発環境の構築が完了しました。
pause >nul
