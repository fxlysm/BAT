@echo off&setlocal  enabledelayedexpansion
@mode con cols=60 lines=30
@cls
@color 1f
@title Android Logcat 保存 %date%
:a
cls
echo.
echo              ╭──────────╮
echo        ╭──┤ Android Logcat 保存├──╮
echo        │    ╰──────────╯    │
echo        │                                │
echo        │       制作者：刘勇             │
echo        │                                │
echo        │     注：logcat保存为当前目录   │
echo        ╰────────────────╯
echo.
echo              未检测到设备....
adb wait-for-device>nul
:b
echo.&echo.
cls
echo.
echo              ╭──────────╮
echo        ╭──┤ Android Logcat 保存├──╮
echo        │    ╰──────────╯    │
echo        │                                │
echo        │       制作者：刘勇             │
echo        │                                │
echo        │     注：logcat保存为当前目录   │
echo        ╰────────────────╯
echo.
echo     设备已连接成功，选择相应级别保存相应logcat....
echo.&echo.
set cd=%cd%
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%t1%%time:~3,2%%time:~6,2%
set CurDate=%date:~0,10%
echo LOG优先级选择1~8
echo.
echo 命令选择：[1]V   [2]D  [3]I [4]W [5]E [6]F [7]S  [q]退出
echo.&echo.
set/p a=请输入选择LOG级别为：
if %a%==1 adb shell logcat -v time  *:v > %cd%\logcat_%CurDate%_%TT%.txt &pause>nul&goto c
if %a%==2 adb shell logcat -v time  *:d > %cd%\logcat_%CurDate%_%TT%.txt &pause>nul &goto c
if %a%==3 adb shell logcat -v time  *:i > %cd%\logcat_%CurDate%_%TT%.txt &pause>nul &goto c
if %a%==4 adb shell logcat -v time  *:w > %cd%\logcat_%CurDate%_%TT%.txt &pause>nul &goto c
if %a%==5 adb shell logcat -v time  *:E > %cd%\logcat_%CurDate%_%TT%.txt &pause>nul &goto c
if %a%==6 adb shell logcat -v time  *:f > %cd%\logcat_%CurDate%_%TT%.txt &pause>nul &goto c
if %a%==7 adb shell logcat -v time  *:s > %cd%\logcat_%CurDate%_%TT%.txt &pause>nul &goto c
if %a%==q goto exit

:c
cls
echo.
echo              ╭──────────╮
echo        ╭──┤ Android Logcat 保存├──╮
echo        │    ╰──────────╯    │
echo        │                                │
echo        │       制作者：刘勇             │
echo        │                                │
echo        │     注：logcat保存为当前目录   │
echo        ╰────────────────╯
echo.
echo              正在打开log....
start logcat_%a%_%CurDate%_%TT%.txt goto b
:exit
exit