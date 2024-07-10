   @echo off
Reg.exe delete "HKLM\System\CurrentControlSet\Control\ThreadScheduling" /v "EnableThreadMigration" /f
Reg.exe delete "HKLM\System\CurrentControlSet\Control\ThreadScheduling" /v "ThreadBoostType" /f
Reg.exe delete "HKLM\System\CurrentControlSet\Control\ThreadScheduling" /v "ThreadSchedulingModel" /f
Reg.exe delete "HKLM\System\CurrentControlSet\Services\HDAudBus\Parameters" /v "ThreadPriority" /f
Reg.exe delete "HKLM\System\CurrentControlSet\Services\HidUsb\Parameters" /v "ThreadPriority" /f
Reg.exe delete "HKLM\System\CurrentControlSet\Services\iaStorAC\Parameters" /v "ThreadPriority" /f
Reg.exe delete "HKLM\System\CurrentControlSet\Services\iaStorAV\Parameters" /v "IoLatencyCap" /f
Reg.exe delete "HKLM\System\CurrentControlSet\Services\iaStorAV\Parameters" /v "IoTimeoutValue" /f
Reg.exe delete "HKLM\System\CurrentControlSet\Services\iaStorAV\Parameters" /v "NumberOfRequests" /f
Reg.exe delete "HKLM\System\CurrentControlSet\Services\iaStorAVC\Parameters" /v "ThreadPriority" /f
