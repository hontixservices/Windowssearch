@echo off
Reg.exe add "HKCU\System\CurrentControlSet\Control\GameInput\Devices\VID_054C&PID_0CE6&REV_0100&MI_03" /v "Flags" /t REG_DWORD /d "16" /f
Reg.exe add "HKCU\System\CurrentControlSet\Control\GameInput\Devices\VID_054C&PID_0CE6&REV_0100&MI_03" /v "Filter" /t REG_DWORD /d "0" /f