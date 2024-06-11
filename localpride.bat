@echo off

title Localpride CLI
set nhc=bin\nhcolor.exe

:Menu
Set Mode=
cls
%nhc% 02 =======================================
%nhc% 02 LOCALPRIDE CLI
%nhc% 04 Welcome back, %USERNAME%!
%nhc% 02 =======================================
echo.
%nhc% 04 === Server
echo 10. Start Apache
echo 11. Start MySQL
echo 12. Stop All
echo.
%nhc% 04 === Tools
echo 20. PHP Test                                    24. New Project
echo 21. Status                                      25. Edit Pretty URL                                 
echo 22. Download
echo 23. Update
echo.
%nhc% 04 === Information
echo 
echo.
echo 0. Refresh Dashboard 
echo.
Set /P Mode=Please choose the option:

If "%Mode%"=="10" Goto 10
If "%Mode%"=="11" Goto 11
If "%Mode%"=="12" Goto 12
If "%Mode%"=="13" Goto 13
If "%Mode%"=="20" Goto 20
If "%Mode%"=="21" Goto 21
If "%Mode%"=="22" Goto 22
If "%Mode%"=="23" Goto 23
If "%Mode%"=="90" Goto 90
If "%Mode%"=="91" Goto 91
If "%Mode%"=="92" Goto 92
If "%Mode%"=="93" Goto 93
If "%Mode%"=="0" Goto Menu
If "%Mode%"=="" Goto 404

echo.
pause

:10
rem Start Apache
start /B plugins\apache\bin\httpd.exe
Goto Menu

:11
rem TODO: Run mysqld.exe in background
start plugins\mysql\bin\mysqld.exe --defaults-file="plugins\mysql\my.ini" --console
Goto Menu

:12
rem Stop All
cd bin
kill
Goto Menu

:13
:14
:15
:16
:17
:18
:19

:20
rem PHP Test
cd bin
phptest

:21
rem Status
cd bin
status

:22
rem Download
cd bin
download

:23
rem New Project
cd bin
project

:24
:25
:26
:27
:28
:29
:30

:91
:92
:93
:94
:95
:96
:97
:98

:404
%nhc% 47 Error 404 : Function not found!
pause
Goto Menu