@echo off
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "PowerThrottling" /t REG_DWORD /d 1 /f
