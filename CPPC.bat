@echo off

    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Processor" /v CPPCEnable /t REG_DWORD /d 0 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Processor" /v AllowPepPerfStates /t REG_DWORD /d 0 /f