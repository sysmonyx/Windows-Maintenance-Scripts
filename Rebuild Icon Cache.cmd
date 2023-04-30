::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   /$$$$$$                                                                                                                    
::  /$$__  $$                                                                                                                   
:: | $$  \__/ /$$   /$$  /$$$$$$$ /$$$$$$/$$$$   /$$$$$$  /$$$$$$$  /$$   /$$ /$$   /$$         # Author:   Soham Ray [Sysmonyx]
:: |  $$$$$$ | $$  | $$ /$$_____/| $$_  $$_  $$ /$$__  $$| $$__  $$| $$  | $$|  $$ /$$/                                         
::  \____  $$| $$  | $$|  $$$$$$ | $$ \ $$ \ $$| $$  \ $$| $$  \ $$| $$  | $$ \  $$$$/          # Website:  https://sysmonyx.com
::  /$$  \ $$| $$  | $$ \____  $$| $$ | $$ | $$| $$  | $$| $$  | $$| $$  | $$  >$$  $$                                          
:: |  $$$$$$/|  $$$$$$$ /$$$$$$$/| $$ | $$ | $$|  $$$$$$/| $$  | $$|  $$$$$$$ /$$/\  $$         # Email:    contact@sysmonyx.com
::  \______/  \____  $$|_______/ |__/ |__/ |__/ \______/ |__/  |__/ \____  $$|__/  \__/                                         
::            /$$  | $$                                             /$$  | $$                                                   
::           |  $$$$$$/                                            |  $$$$$$/                                                   
::            \______/                                              \______/                                                    
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::  Description:    This script clears the Windows Icon Cache.
::
::  Last Updated:   30.04.2023
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
color 0E
title Rebuild Icon Cache

:: Stop Windows Explorer.
TASKKILL /IM explorer.exe /F
TIMEOUT /T 3 /NOBREAK

:: Delete Icon Cache files.
DEL "%LOCALAPPDATA%\IconCache.db" /F /Q
DEL "%LOCALAPPDATA%\Microsoft\Windows\Explorer\iconcache_*" /F /Q

:: Restart Windows Explorer.
start explorer.exe

echo.
echo Complete. Please reboot your PC.
echo.

pause
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::