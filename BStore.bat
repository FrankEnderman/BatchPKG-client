@echo off
title BatchStore
goto appstore
:appstore
cls
echo Welcome to BatchStore
echo NOTE: The app name is case-sensitive
set /p app= Application:

echo.
curl https://raw.githubusercontent.com/FrankEnderman/BatchPKG/main/%app%.bat >> %app%.bat
echo.
echo The file has been downloaded in the same folder as the program
pause
goto appstore