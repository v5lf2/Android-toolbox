@echo off
title=��Android�����䡿@by��Yuanhaha��
:home
echo ��My toolbox��
echo ��һ��������
echo 1������-fastboot
echo 2������-rec
echo 3��FB-ϵͳ
echo 4��FB-rec
echo ��������BL����
echo 5��Google��oneplus
echo 6��������ͱ����Ͻ���
echo 7������������������
echo 8,������һ��img����
echo 9,��ˢдָ��������
echo 10,����װapk��
echo ��ʵ�ù��ߡ�
echo 11������̫��������֮��
echo 12��������䣨adbģʽ��
set /p ADB=�������ѡ��:
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
set /p unlock-code=��Ľ����룺
pause
cd bin
..\ADB\fastboot.exe oem unlock %unlock-code%
goto home
:boot-img
set /p boot=�뽫img�ļ�����˴��ڣ�
cd bin
..\ADB\fastboot.exe boot %boot%
pause
goto home
:flash-img
set /p part=��Ҫˢ�ķ������ƣ�
set /p img=�뽫�����ļ�����˴��ڣ�
pause
cd bin
..\ADB\fastboot.exe flash %part% %img%
pause
goto home
:install-apk
set /p apk=�뽫apk�ļ�����˴��ڣ�
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