@echo off
title BatchStore
goto appstore
:appstore
cls
echo %DATE%, %TIME%
echo --------------------------------------
curl https://raw.githubusercontent.com/FrankEnderman/BatchPKG-client/1.1/announcements
echo --------------------------------------

echo NOTE: The app name is case-sensitive
echo. 
curl https://raw.githubusercontent.com/FrankEnderman/BatchPKG-client/1.1/list
echo.
set /p app= Application:
setlocal enabledelayedexpansion
set /a count=1 
for /f "skip=1 delims=:" %%a in ('CertUtil -hashfile "%app.bat%" MD5') do (
  if !count! equ 1 set "MD5=%%a"
  set/a count+=1
)
set "MD5=%MD5: =%

if %MD5% == "c915c717919f5b28f5e343fda16a84f6" del %app%.bat && echo DownloadBlocked: Malware 
if %MD5% == "a0e4f5bcd5afc8b891cafcaccec37364" del %app%.bat && echo DownloadBlocked: Malware
if %MD5% == "3e9b7b76b154342811a8dcc2b507c1ce" del %app%.bat && echo DownloadBlocked: Malware
if %MD5% == "c1d306405e800aefb0c7ff68b7c54454" del %app%.bat && echo DownloadBlocked: Malware
if %MD5% == "801d7f317b7a067295bf4f8ea9dbf75f" del %app%.bat && echo DownloadBlocked: Malware
if %MD5% == "b04accbeb00ae7ec424c45a9277be90f" del %app%.bat && echo DownloadBlocked: Malware
if %MD5% == "516a488e59138e5b88b1e4356eb86e00" del %app%.bat && echo DownloadBlocked: Malware
if %MD5% == "871ba3e3ed099c4a168358f21930b8e7" del %app%.bat && echo DownloadBlocked: Malware
if %MD5% == "6a93a4071cc7c22628af40a4d872f49b" del %app%.bat && echo DownloadBlocked: Malware
if %MD5% == "297803422dab699e8b9050ae43b4ea4c" del %app%.bat && echo DownloadBlocked: Malware
if %MD5% == "068635c7a75c9e295ecafba1ba207dbd" del %app%.bat && echo DownloadBlocked: Malware
if %MD5% == "b9ab2f549a385ec8e899de01c92440b6" del %app%.bat && echo DownloadBlocked: Malware

if %MD5% == "77ad291b0b88a7314c1dd811d669e077" del %app%.bat && echo DownloadBlocked: Malware


endlocal
echo.
curl https://raw.githubusercontent.com/FrankEnderman/BatchPKG/main/%app%.bat > %app%.bat
echo.
echo The file has been downloaded in the same folder as the program
pause
goto appstore
