@echo off
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem\CDFS" /v "PrefetchTail" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem\CDFS" /v "CacheSize" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem\CDFS" /v "Prefetch" /f

