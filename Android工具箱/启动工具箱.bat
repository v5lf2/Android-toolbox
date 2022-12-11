@echo off
title=【Android工具箱】@by【Yuanhaha】
:home
echo 【My toolbox】
echo 【一、重启】
echo 1，开机-fastboot
echo 2，开机-rec
echo 3，FB-系统
echo 4，FB-rec
echo 【二、解BL锁】
echo 5，Google，oneplus
echo 6，特殊机型保资料解锁
echo 7，需解锁码的其他机型
echo 8,【启动一个img镜像】
echo 9,【刷写指定分区】
echo 10,【安装apk】
echo 【实用工具】
echo 11，激活太极的阴阳之门
echo 12，激活冰箱（adb模式）
set /p ADB=输入你的选择:
if "%ADB%"=="1" goto reboot-fb
if "%ADB%"=="2" goto reboot-rec
if "%ADB%"=="3" goto reboot-fb-sys
if "%ADB%"=="4" goto reboot-fb-rec
if "%ADB%"=="5" goto unlock-Google
if "%ADB%"=="6" goto unlock-crack
if "%ADB%"=="7" goto unlock-code
if "%ADB%"=="8" goto boot-img
if "%ADB%"=="9" goto flash-img
if "%ADB%"=="10" goto install-apk
if "%ADB%"=="11" goto taichi-god
if "%ADB%"=="12" goto icebox-adb
:reboot-fb
cd bin
..\ADB\adb.exe reboot bootloader
pause
goto home
:reboot-rec
cd bin
..\ADB\adb.exe reboot recovery
pause
goto home
:reboot-fb-sys
cd bin
..\ADB\fastboot reboot
pause
goto home
:reboot-fb-rec
cd bin
..\ADB\fastboot.exe reboot recovery
pause
goto home
:unlock-Google
pause
cd bin
..\ADB\fastboot.exe oem unlook
pause
goto home
:unlock-crack
cd bin
..\ADB\fastboot.exe oem disable_dm_verity
..\ADB\fastboot.exe oem 4F00301
pause
goto home
:unlock-code
pause
set /p unlock-code=你的解锁码：
pause
cd bin
..\ADB\fastboot.exe oem unlock %unlock-code%
goto home
:boot-img
set /p boot=请将img文件拖入此窗口：
cd bin
..\ADB\fastboot.exe boot %boot%
pause
goto home
:flash-img
set /p part=你要刷的分区名称：
set /p img=请将镜像文件拖入此窗口：
pause
cd bin
..\ADB\fastboot.exe flash %part% %img%
pause
goto home
:install-apk
set /p apk=请将apk文件拖入此窗口：
cd bin
..\ADB\adb.exe install %apk%
pause
goto home
:taichi-god
pause
adb shell dpm set-device-owner me.weishu.exp/.DeviceAdmin
pause
goto home
:icebox-adb
pause
adb shell sh /sdcard/Android/data/com.catchingnow.icebox/files/start.sh
pause
goto home