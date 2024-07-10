@echo off
@echo on
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v "DisableBufferedIoInit" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v "LargeIrpStackLocations" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v "MediumIrpStackLocations" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v "IoEnableSessionZeroAccessCheck" /f
Reg.exe delete "HKLM\System\ResourcePolicyStore\ResourceSets\Policies\IO\NoCap" /v "IOBandwidth" /f
Reg.exe delete "HKLM\System\ResourcePolicyStore\ResourceSets\Policies\IO\NoCap" /v "NoCapAllowMappedIOForAllProcesses" /f
