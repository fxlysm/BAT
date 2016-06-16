mkdir d:\log
adb shell top -m 10 -n 5 > d:\log\top.txt
adb shell dumpstate > d:\log\dumpstate.txt
adb pull /data/anr d:\log
adb pull /data/dontpanic d:\log
