@echo off
cd /d %~dp0

echo �J�����̍\�z���J�n���܂����H [Y/N]
echo ���G���[���o�Ă������Ȃ����ƁB

rem �v���J�n
call worktime.bat START

choice /n

if errorlevel 2 goto :end

@rem '####### ���z���̑I��

echo "��vagrant��1.8�ȍ~���g�p����K�v������܂��B������ꍇ�͍\�z������̔ԍ�����͂��Ă������� [A/N]"
echo "A : CentOS7, nginx , MariaDB, cakephp"

choice /c:NA

if errorlevel 2 goto nmc
if errorlevel 1 goto end

echo aaaaaaaaaaaaa
pause >nul

rem --------
rem -------- �I������
rem --------
:end
echo �J�����̍\�z���J�n���܂���ł����B
pause >nul
exit

:SuccessOrDie
if not %errorlevel% == 0 (
    echo [ERROR] :P
    exit 1
)
exit /b 0

rem --------
rem -------- A���I����
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
rem �v���I��
call worktime.bat STOP

rem �\��
call worktime.bat PRINT

echo �J�����̍\�z���������܂����B
pause >nul
