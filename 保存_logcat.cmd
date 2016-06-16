@echo off&setlocal  enabledelayedexpansion
@mode con cols=80 lines=30
@cls
@color 1f
@title 【android平台logcat保存工具】 %date%
mkdir c:\log\
:a
cls
echo.
echo                           【android平台logcat保存工具】
echo  *********************************************************************
echo.
echo            注：logcat保存为当前目录   
echo.
echo  *********************************************************************     
echo.
echo              未检测到设备....
adb wait-for-device>nul
:main
echo.&echo.
cls
echo.
echo.
echo                           【android平台logcat保存工具】
echo  *********************************************************************
echo.
echo            注：logcat保存为当前目录   
echo.
echo  *********************************************************************      
echo.
echo     选择相应LOG优先级保存相应logcat....
echo     如：选择5，则保存log全为以Error以上的信息
echo.&echo.
echo LOG优先级选择1~8
echo.
echo 命令选择：[1]V   [2]D  [3]I [4]W [5]E [6]F [7]S  [q]退出
echo.&echo.
set/p a=请输入选择LOG级别为：
if %a%==1 goto v
if %a%==2 goto d
if %a%==3 goto i
if %a%==4 goto w
if %a%==5 goto e
if %a%==6 goto f
if %a%==7 goto s
if %a%==q goto exit
:v
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
adb wait-for-device>nul
echo 正在保存logcat信息
adb shell logcat -v time  *:v >c:\log\logcat_%TT%.txt
echo   是否打开log信息?
echo  *******************************************
echo 命令选择：Y   N
echo.&echo.
set/p a=是否打开Y/N：
if %a%==y start c:\log\logcat_%TT%.txt
if %a%==n goto main
if %a%==Y start c:\log\logcat_%TT%.txt
if %a%==N goto main
pause
goto main
:d
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
adb wait-for-device>nul
echo 正在保存logcat信息
adb shell logcat -v time  *:d >c:\log\logcat_%TT%.txt
echo   是否打开log信息?
echo ********************************
echo 命令选择：Y   N
echo.&echo.
set/p a=是否打开Y/N：
if %a%==y start c:\log\logcat_%TT%.txt
if %a%==n goto main
if %a%==Y start c:\log\logcat_%TT%.txt
if %a%==N goto main
pause
goto main
:i
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
adb wait-for-device>nul
echo 正在保存logcat信息
adb shell logcat -v time  *:i >c:\log\logcat_%TT%.txt
echo   是否打开log信息?
echo ********************************
echo 命令选择：Y   N
echo.&echo.
set/p a=是否打开Y/N：
if %a%==y start c:\log\logcat_%TT%.txt
if %a%==n goto main
if %a%==Y start c:\log\logcat_%TT%.txt
if %a%==N goto main
pause
goto main
:w
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
adb wait-for-device>nul
echo 正在保存logcat信息
adb shell logcat -v time  *:w >c:\log\logcat_%TT%.txt
echo   是否打开log信息?
echo ********************************
echo 命令选择：Y   N
echo.&echo.
set/p a=是否打开Y/N：
if %a%==y start c:\log\logcat_%TT%.txt
if %a%==n goto main
if %a%==Y start c:\log\logcat_%TT%.txt
if %a%==N goto main
pause
goto main
:e
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
adb wait-for-device>nul
echo 正在保存logcat信息
adb shell logcat -v time  *:e >c:\log\logcat_%TT%.txt
echo   是否打开log信息?
echo ********************************
echo 命令选择：Y   N
echo.&echo.
set/p a=是否打开Y/N：
if %a%==y start c:\log\logcat_%TT%.txt
if %a%==n goto main
if %a%==Y start c:\log\logcat_%TT%.txt
if %a%==N goto main
pause
goto main
:f
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
adb wait-for-device>nul
echo 正在保存logcat信息
adb shell logcat -v time  *:f >c:\log\logcat_%TT%.txt
echo   是否打开log信息?
echo ********************************
echo 命令选择：Y   N
echo.&echo.
set/p a=是否打开Y/N：
if %a%==y start c:\log\logcat_%TT%.txt
if %a%==n goto main
if %a%==Y start c:\log\logcat_%TT%.txt
if %a%==N goto main
pause
goto main
:s
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
adb wait-for-device>nul
echo 正在保存logcat信息
adb shell logcat -v time  *:v >s:\log\logcat_%TT%.txt
echo   是否打开log信息?
echo ********************************
echo 命令选择：Y   N
echo.&echo.
set/p a=是否打开Y/N：
if %a%==y start c:\log\logcat_%TT%.txt
if %a%==n goto main
if %a%==Y start c:\log\logcat_%TT%.txt
if %a%==N goto main
pause
goto main

:exit
exit