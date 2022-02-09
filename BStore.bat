@echo off
title BatchStore
goto appstore
:appstore
cls
echo Welcome to BatchStore
echo NOTE: The app name is case-sensitive
set /p app= Application:
echo Code for The Application. Copy and paste into a Batch File to run
echo.
curl https://raw.githubusercontent.com/FrankEnderman/BatchPKG/main/%app%.bat
echo.
pause
goto appstore