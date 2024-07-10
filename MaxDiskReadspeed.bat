@echo off
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem\CDFS" /v "PrefetchTail" /t REG_DWORD /d 16384 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem\CDFS" /v "CacheSize" /t REG_BINARY /d ff ff 00 00 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem\CDFS" /v "Prefetch" /t REG_DWORD /d 16384 /f
