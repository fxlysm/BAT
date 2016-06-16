@echo off
:: 判断输入路径是不是文件夹，如果是，则获取文件夹下的所有文件名(包括子文件夹下的)
:: code by ZHEN CMD@XP 2009-04-07

if exist list.txt del list.txt /q
:input
cls
set input=:
set /p input=Please input path:
set "input=%input:"=%"
:: 上面这句为判断%input%中是否存在引号，有则剔除。
if "%input%"==":" goto input
if not exist "%input%" goto input
for %%i in ("%input%") do if /i "%%~di"==%%i goto input
pushd %cd%
cd /d "%input%">nul 2>nul || exit
set cur_dir=%cd%
popd
:: %%~nxi只显示文件名,%%i显示带路径的文件信息
for /f "delims=" %%i in ('dir /b /a-d /s "%input%"') do echo %%i>>list.txt
if not exist list.txt goto no_file
start list.txt
exit

:no_file
cls
echo %cur_dir% Folder does not have a separate document
pause