@echo off

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "CpuPriorityClass" /t REG_DWORD /d 3 /f
