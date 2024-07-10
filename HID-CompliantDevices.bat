@Echo OFF
Color 0F
Mode 65, 16
timeout /t 1 /nobreak >nul
REM HID Compliant Consumer Control Device
PowerShell -Command "Get-WmiObject -Query 'SELECT * FROM Win32_PnPEntity WHERE Name = ''HID-compliant consumer control device''' | ForEach-Object { $_.Disable(); Write-Host 'Disabled device: ' + $_.Name }" >nul
timeout /t 1 /nobreak >nul
REM HID-Compliant Vendor-Defined Device
PowerShell -Command "Get-WmiObject -Query 'SELECT * FROM Win32_PnPEntity WHERE Name = ''HID-compliant vendor-defined device''' | ForEach-Object { $_.Disable(); Write-Host 'Disabled device: ' + $_.Name }" >nul
