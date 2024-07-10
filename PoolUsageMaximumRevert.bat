@echo off
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v PoolUsageMaximum /t REG_DWORD /d 40 /f
