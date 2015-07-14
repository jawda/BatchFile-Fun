@ECHO OFF
REM Top level Menu
title Work Selection Screen
color 0A
cls
setlocal
:TOP
ECHO **           Welcome to Work Flow Selection               **
ECHO ************************************************************
ECHO **                                                        **
ECHO **    This program is a menu system to decide where       **
ECHO **    to begin working in a new folder or an existing one **
ECHO **          Created by Me (Joe Williams) for me           **
ECHO **          Last Modified 01/17/2014                      **
ECHO **                                                        **
ECHO **                                                        **
ECHO **                                                        **
ECHO **                                                        **
ECHO **  What would you like to do?                            **
ECHO **                                                        **
ECHO **  1. Create a new project folder                        **
ECHO **  2. Open an existing project folder                    **
ECHO **  3. Nevermind just let me exit!                        **
 
set /p option=**   Please type your choice:
if "%option%"=="1" goto op1
if "%option%"=="2" goto op2
if "%option%"=="3" goto END

:op1
cd "C:\Users\jwilliams\Desktop\Bat Projects\"
NewProject.BAT

:op2
cd C:\Users\jwilliams\Desktop\Bat Projects\"
DynamicFolder.Bat

:END
@Exit
endlocal