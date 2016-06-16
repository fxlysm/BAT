@echo 
:make
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%t1%%time:~3,2%%time:~6,2%
set CurDate=%date:~0,10%

rem -------手机截图----------------
adb shell /system/bin/screencap -p /sdcard/scerrnshot.png
rem -------截图从SD卡复制至PC----------
adb pull /mnt/sdcard/scerrnshot.png c:\log\Pictures\scerrnshot.png
rem -------对PC上的图片进行重命名------
move c:\log\Pictures\scerrnshot.png    c:\log\Pictures\Pictures_%CurDate%_%TT%.png
cls