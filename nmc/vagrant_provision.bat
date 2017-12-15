@echo off
cd /d %~dp0

vagrant provision

echo 仮想マシンは起動したままプロビジョニングのみ再度実行

pause >nul
