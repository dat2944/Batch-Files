@echo off
set "url=https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=en-US"
set "filename=Firefox Installer.exe"

echo Downloading file from %url% ...
curl -L -o "%filename%" %url%

if errorlevel 1 (
    echo Failed to download the file from %url%.
) else (
    echo File '%filename%' downloaded successfully.
    echo Installing Firefox...
    start /wait "" "%cd%\%filename%" -ms
    echo Firefox installed successfully.
)
