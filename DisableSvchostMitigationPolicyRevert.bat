@echo off
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SCMConfig" /v EnableSvchostMitigationPolicy /f

