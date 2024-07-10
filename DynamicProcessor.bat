@echo off
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PerfOptions" /v "DisableDynamicProcessorClocks" /t REG_DWORD /d 1 /f
