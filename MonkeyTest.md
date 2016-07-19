#Monkey脚本测试#

##执行命令##

    adb shell monkey -f %script_path% %次数%

##脚本示例script_testcase01 ## 
    
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
