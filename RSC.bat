@echo off
netsh int tcp set global rsc=disabled
powershell  Set-NetOffloadGlobalSetting -ReceiveSegmentCoalescing disabled  