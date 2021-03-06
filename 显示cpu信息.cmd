@echo off&setlocal  enabledelayedexpansion
@pushd C:\WINDOWS\system32
@mode con cols=64 lines=20
@cls
@color 1f
@title 显示cpu信息 %date%
mkdir c:\log\
cls
:a
cls
echo.
echo              ╭──────────╮
echo        ╭──┤    显示cpu信息     ├──╮
echo        │    ╰──────────╯    │
echo        │                                │
echo        │       制作者：刘勇             │
echo        │                                │
echo        │                                │
echo        ╰────────────────╯
echo.
echo              未检测到设备....
adb wait-for-device>nul
goto canshu

:canshu
cls
echo.
echo              ╭──────────╮
echo        ╭──┤    显示cpu信息     ├──╮
echo        │    ╰──────────╯    │
echo        │                                │
echo        │       制作者：刘勇             │
echo        │                                │
echo        │   保存目录位置：c:\log\        │
echo        ╰────────────────╯
echo.
echo 正在保存显示cpu信息至c:\log\dumpsys_cpuinfo.txt中.....
set cd = %cd%
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%t1%%time:~3,2%%time:~6,2%
set CurDate=%date:~0,10%
adb shell dumpsys cpuinfo
adb shell dumpsys cpuinfo  >c:\log\dumpsys_cpuinfo.txt

:pp
cls
echo.
echo              ╭──────────╮
echo        ╭──┤    显示cpu信息     ├──╮
echo        │    ╰──────────╯    │
echo        │                                │
echo        │       制作者：刘勇             │
echo        │                                │
echo        │   保存目录位置：c:\log\        │
echo        ╰────────────────╯
echo.
echo     保存显示cpu信息完成或ADB断开保存
echo.&echo.
echo   是否打开显示cpu信息?
echo ********************************
echo 命令选择：Y   N
echo.&echo.
set/p a=是否打开Y/N：
if %a%==y start c:\log\dumpsys_cpuinfo.txt
if %a%==n goto exit
if %a%==Y start c:\log\dumpsys_cpuinfo.txt
if %a%==N goto exit
:exit
exit