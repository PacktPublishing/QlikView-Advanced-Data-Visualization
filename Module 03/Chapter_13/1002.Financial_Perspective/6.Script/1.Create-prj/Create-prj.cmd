@echo off
@echo  __________________________________________________________________
@echo             Deployment Framework Create-prj.cmd                  
@echo     Script for -prj folder creation beside the qvw files      
@echo The -prj folder is used for version control of objects and scripts
@echo  No configuration needed, works with both physical and UNC path            
@echo ___________________________________________________________________

:: Change AppPath if Deployment Framework structure is modified
SET AppPath=..\..\1.Application

:: Mount folder in 1.Application
pushd "%~dp0%AppPath%"

:: List all qvw files, loop through them and create prj folders
for /F "delims==" %%F in ('dir /b /s *.qvw') do mkdir "%%~pnF-prj"

:: Unmount folder
popd

:: Use pause to debug
::pause