@echo off
echo   循环开关机测试
echo        开始
set a=
set/p a=请输入要运行的次数：
for /l %%i in (1 1 %a%+1) do adb reboot&adb wait-for-device>nul&ping -n 30 127.1>nul&ping -n 30 127.1>nul
set a=循环测试开关机
set b=%time:~0,5%
set c=%date%
echo      结束
echo %c% 时间：%b% %a%
pause>>nul