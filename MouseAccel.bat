@echo off
reg.exe add "HKCU\Control Panel\Mouse" /v MouseAcceleration /t REG_SZ /d 0 /f > nul