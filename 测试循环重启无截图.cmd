@echo off&setlocal  enabledelayedexpansion
@pushd C:\WINDOWS\system32
@mode con cols=64 lines=20
@cls
@color 1f
@title 循环开关机测试 %date%
:a
cls
echo.
echo              ╭──────────╮
echo        ╭──┤Android循环重启测试 ├──╮
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
echo        ╭──┤Android循环重启测试 ├──╮
echo        │    ╰──────────╯    │
echo        │                                │
echo        │       制作者：刘勇             │
echo        │                                │
echo        │                                │
echo        ╰────────────────╯
echo.
set a=
set/p a=请输入要运行的次数：
:numb
cls
echo.
echo              ╭──────────╮
echo        ╭──┤Android循环重启测试 ├──╮
echo        │    ╰──────────╯    │
echo        │                                │
echo        │       制作者：刘勇             │
echo        │                                │
echo        │  测试次数：%a%                   │
echo        ╰────────────────╯
echo.
set b=
set/p b=请输入重启间隔时间（秒）：
:loops
cls
echo.
echo              ╭──────────╮
echo        ╭──┤Android循环重启测试 ├──╮
echo        │    ╰──────────╯    │
echo        │                                │
echo        │       制作者：刘勇             │
echo        │                                │
echo        │  测试次数：%a%   间隔时间:%b%秒   │
echo        ╰────────────────╯
echo.
for /l %%i in (1 1 %a%+1) do echo 第%%i次重启测试&adb reboot&adb wait-for-device>nul&ping -n %b% 127.1>nul


:stop
cls
echo.
echo              ╭──────────╮
echo        ╭──┤Android循环重启测试 ├──╮
echo        │    ╰──────────╯    │
echo        │                                │
echo        │       制作者：刘勇             │
echo        │                                │
echo        │  测试次数：%a%   间隔时间:%b%秒   │
echo        ╰────────────────╯
set e=%time:~0,5%
set f=%date%
echo      总运行：%a% 次   重启间隔(秒)：%b%
echo      测试完成
echo 测试日期： %e% 时间：%f% 
pause
pause>>nul