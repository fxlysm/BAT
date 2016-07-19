#Monkey脚本测试#

##执行命令##

    adb shell monkey -f %script_path% %次数%

##脚本示例script_testcase01## 
    
    type= user
    count= 10
    speed= 1.0
    start data >>
    LaunchActivity(com.android.dialer, com.android.dialer.DialtactsActivity)
    UserWait(2000)
    #input 1
    captureDispatchPointer(10,10,0,1,176,663,1,1,-1,1,1,0,0)
    captureDispatchPointer(10,10,1,1,176,663,1,1,-1,1,1,0,0)
    #input 1
    captureDispatchPointer(10,10,0,1,176,663,1,1,-1,1,1,0,0)
    captureDispatchPointer(10,10,1,1,176,663,1,1,-1,1,1,0,0)
     # input 2
    captureDispatchPointer(10,10,0,1,361,663,1,1,-1,1,1,0,0)
    captureDispatchPointer(10,10,1,1,361,663,1,1,-1,1,1,0,0)
    # click
     DispatchPress(KEYCODE_DPAD_DOWN)
     UserWait(2000)
     # back
    LongPress(KEYCODE_DOWN)
    UserWait(2000)
    DispatchPress(KEYCODE_BACK)
     UserWait(2000)
     DispatchPress(KEYCODE_BACK)
   
## Monkey 命令说明##

     C:\Users\Lambert Liu>adb shell
     shell@Stratus_5:/ $ monkey -h
     usage: monkey [-p ALLOWED_PACKAGE [-p ALLOWED_PACKAGE] ...]
              [-c MAIN_CATEGORY [-c MAIN_CATEGORY] ...]
              [--ignore-crashes] [--ignore-timeouts]
              [--ignore-security-exceptions]
              [--monitor-native-crashes] [--ignore-native-crashes]
              [--kill-process-after-error] [--hprof]
              [--pct-touch PERCENT] [--pct-motion PERCENT]
              [--pct-trackball PERCENT] [--pct-syskeys PERCENT]
              [--pct-nav PERCENT] [--pct-majornav PERCENT]
              [--pct-appswitch PERCENT] [--pct-flip PERCENT]
              [--pct-anyevent PERCENT] [--pct-pinchzoom PERCENT]
              [--pct-permission PERCENT]
              [--pkg-blacklist-file PACKAGE_BLACKLIST_FILE]
              [--pkg-whitelist-file PACKAGE_WHITELIST_FILE]
              [--wait-dbg] [--dbg-no-events]
              [--setup scriptfile] [-f scriptfile [-f scriptfile] ...]
              [--port port]
              [-s SEED] [-v [-v] ...]
              [--throttle MILLISEC] [--randomize-throttle]
              [--profile-wait MILLISEC]
              [--device-sleep-time MILLISEC]
              [--randomize-script]
              [--script-log]
              [--bugreport]
              [--periodic-bugreport]
              [--permission-target-system]
              COUNT

     255|shell@Stratus_5:/ $
