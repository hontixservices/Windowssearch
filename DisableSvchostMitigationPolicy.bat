@echo off
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SCMConfig" /v EnableSvchostMitigationPolicy /t REG_QWORD /d 0 /f
