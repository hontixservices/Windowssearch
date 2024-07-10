@echo off
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Classpnp" /v "NVMeDisablePerfThrottling" /t REG_DWORD /d 1 /f

