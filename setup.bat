{\rtf1\ansi\ansicpg1252\cocoartf2904
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 @echo off\
cls\
title NWSSL Installer - Network Windows Software Setup Library\
echo ====================================================\
echo             1. INSTALLING CORE SOFTWARE            \
echo ====================================================\
echo.\
\
:: Core Apps (Pulled directly from official sources via Winget)\
echo Installing Google Chrome...\
winget install --id Google.Chrome --silent --accept-source-agreements --accept-package-agreements\
\
echo Installing VLC Media Player...\
winget install --id VideoLAN.VLC --silent --accept-source-agreements --accept-package-agreements\
\
echo Installing Microsoft PowerToys...\
winget install --id Microsoft.PowerToys --silent --accept-source-agreements --accept-package-agreements\
\
echo Installing Rufus...\
winget install --id Rufus.Rufus --silent --accept-source-agreements --accept-package-agreements\
\
echo Core apps finished!\
echo.\
\
:compressionMenu\
echo ====================================================\
echo         2. CHOOSE FILE COMPRESSION UTILITY         \
echo ====================================================\
echo  Install 7-Zip\
echo  Install WinRAR\
echo  Skip Compression Software\
echo.\
set /p compChoice="Select an option (1, 2, or 3): "\
\
if "%compChoice%"=="1" goto install7zip\
if "%compChoice%"=="2" goto installwinrar\
if "%compChoice%"=="3" goto userTypeMenu\
echo Invalid choice. Please press 1, 2, or 3.\
echo.\
goto compressionMenu\
\
:install7zip\
echo.\
echo Installing 7-Zip...\
winget install --id 7zip.7zip --silent --accept-source-agreements --accept-package-agreements\
goto userTypeMenu\
\
:installwinrar\
echo.\
echo Installing WinRAR...\
winget install --id RARLab.WinRAR --silent --accept-source-agreements --accept-package-agreements\
goto userTypeMenu\
\
:userTypeMenu\
echo.\
echo ====================================================\
echo             3. CHOOSE PC PROFILE TYPE              \
echo ====================================================\
echo  Normal Setup (Adobe Reader, 7-Zip Utility, Google Drive)\
echo  Gaming Setup (Normal Setup + Steam, MSI Afterburner)\
echo.\
set /p profileChoice="Select PC profile (1 or 2): "\
\
if "%profileChoice%"=="1" goto normalProfile\
if "%profileChoice%"=="2" goto gamerProfile\
echo Invalid choice. Please press 1 or 2.\
echo.\
goto userTypeMenu\
\
:normalProfile\
echo.\
echo Configuring for a General Utility Setup...\
echo Installing Adobe Acrobat Reader...\
winget install --id Adobe.Acrobat.Reader.64-bit --silent --accept-source-agreements --accept-package-agreements\
\
echo Installing 7-Zip Utility...\
winget install --id 7zip.7zip --silent --accept-source-agreements --accept-package-agreements\
\
echo Installing Google Drive Desktop...\
winget install --id Google.Drive --silent --accept-source-agreements --accept-package-agreements\
goto end\
\
:gamerProfile\
echo.\
echo Configuring for a Gaming Setup...\
echo Installing General Utilities First...\
\
echo Installing Adobe Acrobat Reader...\
winget install --id Adobe.Acrobat.Reader.64-bit --silent --accept-source-agreements --accept-package-agreements\
\
echo Installing 7-Zip Utility...\
winget install --id 7zip.7zip --silent --accept-source-agreements --accept-package-agreements\
\
echo Installing Google Drive Desktop...\
winget install --id Google.Drive --silent --accept-source-agreements --accept-package-agreements\
\
echo Installing Dedicated Gaming Tools...\
echo Installing Steam...\
winget install --id Valve.Steam --silent --accept-source-agreements --accept-package-agreements\
\
echo Installing MSI Afterburner...\
winget install --id Guru3D.Afterburner --silent --accept-source-agreements --accept-package-agreements\
goto end\
\
:end\
echo.\
echo ====================================================\
echo         ALL SELECTED INSTALLATIONS COMPLETE!        \
echo ====================================================\
pause\
}