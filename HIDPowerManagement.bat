@echo off

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\HidUsb\Parameters" /v "PowerManagement" /t REG_DWORD /d 0 /f

