@echo off
@echo  __________________________________________________________________
@echo             Deployment Framework Remove-prj.cmd                  
@echo     Script for -prj folder to remove -prj folders      
@echo  The script will only remove empty -prj folders           
@echo ___________________________________________________________________

:: Change AppPath if Deployment Framework structure is modified
SET AppPath=..\..\1.Application

:: Mount folder in 1.Application
pushd "%~dp0%AppPath%"

:: List all qvw files, loop through them and create prj folders
for /F "delims==" %%F in ('dir /b /s *.qvw') do rmdir /s "%%~pnF-prj"

:: Unmount folder
popd

:: Use pause to debug
:: pause