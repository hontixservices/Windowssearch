@echo off
PowerShell -Command "Set-NetTCPSetting -SettingName '*' -MemoryPressureProtection Disabled" >nul 2>&1
