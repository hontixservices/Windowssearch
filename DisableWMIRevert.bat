@echo off
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Reliability Analysis\WMI" /v "WMIEnable" /t REG_DWORD /d 1 /f
