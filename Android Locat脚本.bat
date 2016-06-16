@echo off&setlocal  enabledelayedexpansion
@mode con cols=50 lines=20
@cls
@color 1f
@title 【android平台Log 工具】 %date%
echo              ╭──────────╮
echo        ╭──┤android平台Log 工具 ├──╮
echo        │    ╰──────────╯    │
echo        │                                │
echo        │                                │
echo        │                                │
echo        │   如有疑问加QQ：814380399      │
echo        ╰────────────────╯
echo ***********************************************
set a=
set/p a=请输入保存文件名称：

:main
echo              ╭──────────╮
echo        ╭──┤android平台Log 工具 ├──╮
echo        │    ╰──────────╯    │
echo        │                                │
echo        │                                │
echo        │                                │
echo        │   如有疑问加QQ：814380399      │
echo        ╰────────────────╯

echo.
echo ***********************************************
set TT=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
adb wait-for-device>nul
echo Logcat Save c:\log\%a%_%TT%.log
adb shell logcat -v time >c:\log\%a%_%TT%.log

ping -n 1 127.1>nul
cls
goto main