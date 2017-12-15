@echo off
cd /d %~dp0

rem --------
rem -------- vagrant provision 実行
rem --------

echo vagrant provision 実行
echo 仮想マシンは起動したままプロビジョニングのみ再度実行

vagrant provision

echo vagrant provisionが完了しました。
