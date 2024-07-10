@echo off
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\HID\VID_045E&PID_028E&IG_00\3&2d0f1f8f&0&0000" /v "TCPackFrequency" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\HID\VID_045E&PID_028E&IG_00\3&2d0f1f8f&0&0000" /v "TCPNoDelay" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\HID\VID_045E&PID_028E&IG_00\3&2d0f1f8f&0&0000" /v "TcpAckFrequency" /t REG_DWORD /d 1 /f
pause