@echo off

    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Quota System" /v EnableCpuQuota /t REG_DWORD /d 0 /f