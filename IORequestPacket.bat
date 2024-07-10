@echo off
    Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v "DisableBufferedIoInit" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v "LargeIrpStackLocations" /t REG_DWORD /d "20" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v "MediumIrpStackLocations" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v "IoEnableSessionZeroAccessCheck" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\System\ResourcePolicyStore\ResourceSets\Policies\IO\NoCap" /v "IOBandwidth" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\System\ResourcePolicyStore\ResourceSets\Policies\IO\NoCap" /v "NoCapAllowMappedIOForAllProcesses" /t REG_DWORD /d "1" /f