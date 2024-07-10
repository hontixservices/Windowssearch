@echo off
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BTHPORT\Parameters" /v "LinkSupervisionTimeout" /t REG_DWORD /d "10" /f