@ech off
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BthHFSrv\Parameters" /v DisableLED /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\HidUsb\Parameters" /v DisableLED /t REG_DWORD /d 1 /f
