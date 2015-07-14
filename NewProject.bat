@ECHO OFF
:TOP
title Project Folder Creator
color 0A
cls
ECHO **           Welcome to Project Folder Creator            **
ECHO ************************************************************
ECHO **                                                        **
ECHO **    This program will create a new folder then          **
ECHO ** copy the necessary items over for a new Batch Project  **
ECHO **          Created by Me (Joe Williams) for me           **
ECHO **          Last Modified 01/17/2014                      **
ECHO **                                                        **
ECHO **                                                        **
ECHO **                                                        **


REM Prompt user for project name
SET /P foldername=**  Please enter project name with out spaces:

REM Make sure they entered something
IF "%foldername%"=="" GOTO Error
IF EXIST "C:\Users\jwilliams\Desktop\Work\%foldername%" GOTO existError
ECHO You created a new project folder named %foldername%
md C:\Users\jwilliams\Desktop\Work\%foldername%
cd C:\Users\jwilliams\Desktop\Work\%foldername%

cls

REM Copy everything needed and open folder
start C:\Users\jwilliams\Desktop\Work\%foldername%
cd C:\Users\jwilliams\Desktop\Work\%foldername%
copy C:\Users\jwilliams\Desktop\Work\"Unedited Stuff"\"_PAM.post.cmd" C:\Users\jwilliams\Desktop\Work\%foldername%\%foldername%_post.cmd
copy C:\Users\jwilliams\Desktop\Work\"Unedited Stuff"\"_PAM.pre.cmd" C:\Users\jwilliams\Desktop\Work\%foldername%\%foldername%_pre.cmd
copy C:\Users\jwilliams\Desktop\Work\"Unedited Stuff"\Transformer.INI C:\Users\jwilliams\Desktop\Work\%foldername%\Transformer_IN_%foldername%.INI
copy C:\Users\jwilliams\Desktop\Work\"Unedited Stuff"\270-5010.txt C:\Users\jwilliams\Desktop\Work\%foldername%\270-5010.txt
copy C:\Users\jwilliams\Desktop\Work\"Unedited Stuff"\XRB_PAM_Elig.INI C:\Users\jwilliams\Desktop\Work\%foldername%\XRB_PAM_Elig.INI
copy C:\Users\jwilliams\Desktop\Work\"Unedited Stuff"\Transformer-Outputv2-5.INI C:\Users\jwilliams\Desktop\Work\%foldername%\Transformer_Out_%foldername%.ini

GOTO END
:ERROR
ECHO You did not enter a name for your project you silly jar jar! 
Set /P response=Would you like to try again (Y/N):
IF "%response%"=="Y" GOTO TOP
IF "%response%"=="N" GOTO RESTART
:existError
ECHO This Folder already exists what are you doing silly rabit!
Set /P check=Would you like to try again (Y/N):
IF "%response%"=="Y" GOTO TOP
IF "%response%"=="N" GOTO RESTART
:RESTART
cd C:\Users\jwilliams\Desktop\
Work.Bat


REM exit
:END