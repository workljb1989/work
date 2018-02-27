@echo off
xcopy Y:\%date:~0,4%\%date:~5,2%\%date:~8,2% C:\CTISERVER\RECORD\%date:~0,4%\%date:~5,2%\%date:~8,2% /s /e /i /y
