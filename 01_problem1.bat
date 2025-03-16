@echo off
REM WAP in batch to shutbown all the computers connected to your computer network..
title Problem 01
chcp 65001>nul
set "file=01_computers.txt"
call :menu
:menu
echo [38;2;0;191;255m Do you want to shutdown these computers(Y/N)? 
set /p choice=[38;2;0;174;239m " Enter your choice:"

if exist "%file%" (

    if /i "%choice%"=="Y" (
        for /f "delims=" %%a in (%file%) do (
            echo [38;2;0;174;239m shutting down %%a.... 
            shutdown /s /f /t 0 /m \\%%a>nul
        )
        pause
        exit 
    )
    if /i "%choice%"=="N" (
        echo [38;2;0;128;192m thank you
        pause
        exit /b 
    )
    if "%choice%"==" " (
        echo [38;2;255;0;0m INVALID Option
        pause
        goto :menu
    ) else (
        echo [38;2;255;0;0m INVALID Option
        goto :menu
    )
) else (
    echo File NOT Found
    pause
    goto :menu

)
exit /b
::[38;2;0;191;255m
::[38;2;0;174;239m
::[38;2;0;147;213m
::[38;2;0;128;192m
::[38;2;0;100;160m
::[38;2;0;77;130m 

::[38;2;255;0;0m