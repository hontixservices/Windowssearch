@echo off
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PerfOptions" /v "DisableCpuQuota" /t REG_DWORD /d 1 /f
