@echo off
title Zip crakcer by Mr.robot
color 2
if not exist "C:\Program Files\7-Zip" (
	echo 7-Zip not installed!
	pause
	exit
)

echo.
set /p archive="Drag Archive to here: "
if not exist "%archive%" (
	echo Archive not found!
	pause
	exit
)

set /p wordlist="Enter Wordlist: "
if not exist "%wordlist%" (
	echo Wordlist not found!
	pause
	exit
)
echo Cracking...
for /f %%a in (%wordlist%) do (
	set pass=%%a
	call :attempt
)
echo password not found try changing wordlist ):

pause
exit

:attempt
"C:\Program Files\7-Zip\7z.exe" x -p%pass% "%archive%" -o"cracked" -y >nul 2>&1
echo ATTEMPT : %pass%
if /I %errorlevel% EQU 0 (
	echo Zip has been cracked saccesfully(: %pass%
	pause
	exit
)