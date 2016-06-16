@echo off&setlocal  enabledelayedexpansion
@pushd C:\WINDOWS\system32
@mode con cols=64 lines=22
@cls
@color 1f
@title 查看应用的内存详情 %date%
mkdir c:\log\
cls
:a
cls
echo.
echo              ╭──────────╮
echo        ╭──┤    应用内存详情    ├──╮
echo        │    ╰──────────╯    │
echo        │                                │
echo        │       制作者：刘勇             │
echo        │                                │
echo        │                                │
echo        ╰────────────────╯
echo.
echo              未检测到设备....
adb wait-for-device>nul
goto f
:f
cls
echo.
echo              ╭──────────╮
echo        ╭──┤    应用内存详情    ├──╮
echo        │    ╰──────────╯    │
echo        │                                │
echo        │       制作者：刘勇             │
echo        │                                │
echo        │                                │
echo        ╰────────────────╯
echo.
set/p k=请输入监控应用的包名：
goto canshu
:canshu
cls
echo.
echo              ╭──────────╮
echo        ╭──┤    应用内存详情    ├──╮
echo        │    ╰──────────╯    │
echo        │                                │
echo        │       制作者：刘勇             │
echo        │                                │
echo        │   保存目录位置：c:\log\        │
echo        ╰────────────────╯
echo.
echo 正在保存应用%k%内存详情至c:\log\%k%.txt中.....
set cd = %cd%
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%t1%%time:~3,2%%time:~6,2%
set CurDate=%date:~0,10%
adb shell dumpsys meminfo %k%
adb shell dumpsys meminfo %k%  >c:\log\%k%.txt

:pp
cls
echo.
echo              ╭──────────╮
echo        ╭──┤    应用内存详情    ├──╮
echo        │    ╰──────────╯    │
echo        │                                │
echo        │       制作者：刘勇             │
echo        │                                │
echo        │                                │
echo        ╰────────────────╯
echo.
echo       保存目录位置：c:\log\%k%.txt 
echo.
echo     保存应用%k%内存详情完成或ADB断开保存
echo.&echo.
echo   是否打开应用%k%内存详情?
echo **********************************************
echo.
echo 命令选择：Y   N
echo.
echo.
set/p a=是否打开Y/N：
if %a%==y start c:\log\%k%.txt
if %a%==n goto exit
if %a%==Y start c:\log\%k%.txt
if %a%==N goto exit
:exit
exit