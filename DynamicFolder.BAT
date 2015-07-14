@ECHO OFF
REM DYNAMIC FOLDER DISPLAY PROGRAM
title Project Selection Screen
color 0A
SETLOCAL

cls
:TOP
cd C:\Users\jwilliams\Desktop\Work\
ECHO Enter 0 to return to the menu
setlocal enabledelayedexpansion
set Index=1
for /d %%D in (%dir%C:\Users\jwilliams\Desktop\Work\*) do (

	Set "SubFolders[!Index!]=%%D"
	Set /a Index+=1
)
set /a UBound=Index-1

for /l %%i in (1,1,%UBound%) do echo %%i. !Subfolders[%%i]!
:choiceloop
set /p Choice=Your choice: 
if "%Choice%"=="0" goto RestartMenu
if "%Choice%"=="" goto choiceloop
if %Choice% LSS 1 goto choiceloop
if %Choice% GTR %UBound% goto choiceloop

set Subfolder=!Subfolders[%Choice%]!

ECHO you chose %SubFolder% great job!
cd %SubFolder%
start explorer %SubFolder%

if "%restart%"=="Y" goto TOP
Exit
Goto End
:RestartMenu
start C:\Users\jwilliams\Desktop\Work.Bat
:END
endlocal