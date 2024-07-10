@echo off
title Straya Tweaking Utility | Restore Point
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "SystemRestorePointCreationFrequency" /t REG_DWORD /d "0" /f >NUL 2>&1
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "Checkpoint-Computer -Description 'Staraya Tweaking Utility v1' -RestorePointType MODIFY_SETTINGS"
timeout /t 2 > nul
echo Operation Sucessfull!
timeout /t 2 > nul
