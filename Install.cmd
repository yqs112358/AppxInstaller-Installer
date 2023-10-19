@echo off
setlocal enabledelayedexpansion

for %%X in (packages\*.appx) do (
    echo [INFO] Installing %%~nX...
    powershell.exe -ExecutionPolicy ByPass "& {add-appxpackage %%X}"
    echo [INFO] Installed.
    echo.
)

for %%X in (packages\*.msixbundle) do (
    echo [INFO] Installing %%~nX...
    powershell.exe -ExecutionPolicy ByPass "& {add-appxpackage %%X}"
    echo [INFO] Installed.
    echo.
)

echo.
echo [SUCCESS] All packages installed.
pause >nul