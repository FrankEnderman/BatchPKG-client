@echo off
title BatchStore
goto appstore
:appstore
cls
curl https://raw.githubusercontent.com/FrankEnderman/BatchPKG-client/1.1/announcements
echo --------------------------------------
echo NOTE: The app name is case-sensitive
echo --------------------------------------
curl https://raw.githubusercontent.com/FrankEnderman/BatchPKG-client/1.1/list
set /p app= Application:

echo.
curl https://raw.githubusercontent.com/FrankEnderman/BatchPKG/main/%app%.bat >> %app%.bat
echo.
echo The file has been downloaded in the same folder as BatchPKG
pause
goto appstore
