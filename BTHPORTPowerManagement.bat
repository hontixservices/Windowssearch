@echo off

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BTHPORT\Parameters" /v "PowerManagementEnabled" /t REG_DWORD /d "0" /f 