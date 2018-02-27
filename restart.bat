@echo off 
:check JAVA_CTI_SERVER.exe                                         
tasklist >list.txt
find /i "JAVA_CTI_SERVER.exe" list.txt
if "%errorlevel%"=="1" (goto start) else (goto e)
:e
taskkill /f /im JAVA_CTI_SERVER.exe 
:start
cls
ping 127.0.0.1 -n 10 >nul
cd /d %~dp0
START JAVA_CTI_SERVER.exe                                                  
 
 
:check cmd.exe                                         
tasklist >list1.txt  
find /i "cmd.exe" list1.txt     
if "%errorlevel%"=="1" (goto e)  
:e
taskkill /f /im cmd.exe   
 
:end
exit
