   @echo off
    Reg.exe add "HKLM\System\CurrentControlSet\Control\ThreadScheduling" /v "EnableThreadMigration" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Control\ThreadScheduling" /v "EnableThreadMigration" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Control\ThreadScheduling" /v "ThreadBoostType" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Control\ThreadScheduling" /v "ThreadBoostType" /t REG_DWORD /d "2" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Control\ThreadScheduling" /v "ThreadSchedulingModel" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Control\ThreadScheduling" /v "ThreadSchedulingModel" /t REG_DWORD /d "2" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\HDAudBus\Parameters" /v "ThreadPriority" /t REG_DWORD /d "15" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\HidUsb\Parameters" /v "ThreadPriority" /t REG_DWORD /d "15" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\iaStorAC\Parameters" /v "ThreadPriority" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\iaStorAV\Parameters" /v "IoLatencyCap" /t REG_DWORD /d "50" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\iaStorAV\Parameters" /v "IoTimeoutValue" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\iaStorAV\Parameters" /v "NumberOfRequests" /t REG_DWORD /d "20" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\iaStorAVC\Parameters" /v "ThreadPriority" /t REG_DWORD /d "0" /f