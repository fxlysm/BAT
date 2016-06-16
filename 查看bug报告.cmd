@echo off&setlocal  enabledelayedexpansion
@pushd C:\WINDOWS\system32
@mode con cols=64 lines=20
@cls
@color 1f
@title 循环开关机测试 %date%
mkdir c:\log\
cls
:a
cls
echo.
echo              ╭──────────╮
echo        ╭──┤Android 查看bug报告 ├──╮
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
echo        ╭──┤Android 查看bug报告 ├──╮
echo        │    ╰──────────╯    │
echo        │                                │
echo        │       制作者：刘勇             │
echo        │                                │
echo        │                                │
echo        ╰────────────────╯
echo.
echo 正在保存bugreport至当前目录中.....
set cd = %cd%
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
set CurDate=%date:~0,10%
adb shell bugreport  >c:\log\bugreport_%TT%.txt


start c:\log\bugreport_%TT%.txt
cls
echo.
echo              ╭──────────╮
echo        ╭──┤Android 查看bug报告 ├──╮
echo        │    ╰──────────╯    │
echo        │                                │
echo        │       制作者：刘勇             │
echo        │                                │
echo        │                                │
echo        ╰────────────────╯
echo.
echo     保存bug报告完成或ADB断开
pause 