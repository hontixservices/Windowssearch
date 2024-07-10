@echo off
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\EMDMgmt" /v "GroupPolicyDisallowCaches" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\EMDMgmt" /v "AllowNewCachesByDefault" /t REG_DWORD /d 0 /f
