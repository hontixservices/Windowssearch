@echo off

rem Re-enable Superfetch by modifying registry key
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d 2 /f

rem Start the Superfetch service
net start SysMain
