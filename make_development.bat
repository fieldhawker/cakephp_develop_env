@echo off
cd /d %~dp0

echo �J�����̍\�z���J�n���܂����H [Y/N]
echo ���G���[���o�Ă������Ȃ����ƁB



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

rem --------
rem -------- A���I����
rem --------
:nmc
echo you selected CentOS7, nginx , MariaDB, cakephp.
set DIR=nmc
goto :make


rem --------
rem -------- vagrant�v���O�C������
rem --------
:make
echo vagrant�v���O�C������

vagrant plugin install vagrant-vbguest
vagrant vbguest --status

vagrant plugin install vagrant-cachier

echo vagrant �N��
cd %DIR%
vagrant up



echo �������������܂����B
pause >nul
