@echo off
cls
title NWSSL - Network Windows Software Setup Library
echo ====================================================
echo             1. INSTALLING CORE SOFTWARE            
echo ====================================================
echo.

:: Core Apps (Pulled directly from official sources via Winget)
echo Installing Google Chrome...
winget install --id Google.Chrome --silent --accept-source-agreements --accept-package-agreements

echo Installing VLC Media Player...
winget install --id VideoLAN.VLC --silent --accept-source-agreements --accept-package-agreements

echo Installing Microsoft PowerToys...
winget install --id Microsoft.PowerToys --silent --accept-source-agreements --accept-package-agreements

echo Core apps finished!
echo.

:compressionMenu
echo ====================================================
echo         2. CHOOSE FILE COMPRESSION UTILITY         
echo ====================================================
echo  Install 7-Zip
echo  Install WinRAR
echo  Skip Compression Software
echo.
set /p compChoice="Select an option (1, 2, or 3): "

if "%compChoice%"=="1" goto install7zip
if "%compChoice%"=="2" goto installwinrar
if "%compChoice%"=="3" goto userTypeMenu
echo Invalid choice. Please press 1, 2, or 3.
echo.
goto compressionMenu

:install7zip
echo.
echo Installing 7-Zip...
winget install --id 7zip.7zip --silent --accept-source-agreements --accept-package-agreements
goto userTypeMenu

:installwinrar
echo.
echo Installing WinRAR...
winget install --id RARLab.WinRAR --silent --accept-source-agreements --accept-package-agreements
goto userTypeMenu

:userTypeMenu
echo.
echo ====================================================
echo             3. CHOOSE PC PROFILE TYPE              
echo ====================================================
echo  Normal Setup (Standard Setup + Spotify)
echo  Gaming Setup (Steam, Discord, Epic, MSI Afterburner, OBS, ShareX, Spotify)
echo.
set /p profileChoice="Select PC profile (1 or 2): "

if "%profileChoice%"=="1" goto normalProfile
if "%profileChoice%"=="2" goto gamerProfile
echo Invalid choice. Please press 1 or 2.
echo.
goto userTypeMenu

:normalProfile
echo.
echo Configuring for a Normal User...
echo Installing Spotify...
winget install --id Spotify.Spotify --silent --accept-source-agreements --accept-package-agreements
goto end

:gamerProfile
echo.
echo Configuring for a Gaming User...
echo Installing Steam...
winget install --id Valve.Steam --silent --accept-source-agreements --accept-package-agreements

echo Installing Discord...
winget install --id Discord.Discord --silent --accept-source-agreements --accept-package-agreements

echo Installing Epic Games Launcher...
winget install --id EpicGames.EpicGamesLauncher --silent --accept-source-agreements --accept-package-agreements

echo Installing MSI Afterburner...
winget install --id Guru3D.Afterburner --silent --accept-source-agreements --accept-package-agreements

echo Installing OBS Studio...
winget install --id OBSProject.OBSStudio --silent --accept-source-agreements --accept-package-agreements

echo Installing ShareX...
winget install --id ShareX.ShareX --silent --accept-source-agreements --accept-package-agreements

echo Installing Spotify...
winget install --id Spotify.Spotify --silent --accept-source-agreements --accept-package-agreements
goto end

:end
echo.
echo ====================================================
echo         ALL SELECTED INSTALLATIONS COMPLETE!        
echo ====================================================
pause
