@echo off
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\NDIS\Parameters" /v "MaxNumRssCpus" /t REG_DWORD /d 4 /f
