:: choose_dir.bat
:: launches a folder chooser and outputs choice to stdout
:: https://stackoverflow.com/a/15885133/1683264

@echo off
setlocal

if -%1-==-- (
  set "caption='Please choose a folder.'"
) else (
  set "caption='%1'"
)

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,%caption%,0,0).self.path""

for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

if "-%folder%-"=="--" set "folder=NONE"

setlocal enabledelayedexpansion
echo !folder!
endlocal
