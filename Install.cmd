@echo off

echo [INFO] Installing VCLibs...
powershell.exe -ExecutionPolicy ByPass "& {add-appxpackage packages/Microsoft.VCLibs.140.00.UWPDesktop_14.0.30704.0_x64__8wekyb3d8bbwe.Appx}"
echo [INFO] Finished.
echo.

echo [INFO] Installing Xaml...
powershell.exe -ExecutionPolicy ByPass "& {add-appxpackage packages/Microsoft.UI.Xaml.2.7_7.2203.17001.0_x64__8wekyb3d8bbwe.Appx}"
echo [INFO] Finished.
echo.

echo [INFO] Installing Desktop App Installer...
powershell.exe -ExecutionPolicy ByPass "& {add-appxpackage packages/Microsoft.DesktopAppInstaller_2022.610.123.0_neutral___8wekyb3d8bbwe.Msixbundle}"
echo [INFO] Finished.
echo.
echo [INFO] All packages installed.

pause >nul