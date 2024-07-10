@echo off
Reg.exe add "HKCU\System\CurrentControlSet\Control\MediaProperties\PrivateProperties\Joystick\OEM" /v "Axes" /t REG_DWORD /d "65535" /f
Reg.exe add "HKCU\System\CurrentControlSet\Control\MediaProperties\PrivateProperties\Joystick\OEM" /v "PollTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\System\CurrentControlSet\Control\MediaProperties\PrivateProperties\Joystick\OEM\VID_054C&PID_0CE6" /v "Axes" /t REG_DWORD /d "65535" /f
Reg.exe add "HKCU\System\CurrentControlSet\Control\MediaProperties\PrivateProperties\Joystick\OEM\VID_054C&PID_0CE6" /v "PollTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\System\CurrentControlSet\Control\MediaProperties\PrivateProperties\Joystick\OEM\VID_0B05&PID_19AF" /v "Axes" /t REG_DWORD /d "65535" /f
Reg.exe add "HKCU\System\CurrentControlSet\Control\MediaProperties\PrivateProperties\Joystick\OEM\VID_0B05&PID_19AF" /v "PollTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\System\CurrentControlSet\Control\MediaProperties\PrivateProperties\Joystick\OEM\VID_0B05&PID_1A03" /v "Axes" /t REG_DWORD /d "65535" /f
Reg.exe add "HKCU\System\CurrentControlSet\Control\MediaProperties\PrivateProperties\Joystick\OEM\VID_0B05&PID_1A03" /v "PollTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\System\CurrentControlSet\Control\MediaProperties\PrivateProperties\Joystick\OEM\VID_1EA7&PID_9018" /v "Axes" /t REG_DWORD /d "65535" /f
Reg.exe add "HKCU\System\CurrentControlSet\Control\MediaProperties\PrivateProperties\Joystick\OEM\VID_1EA7&PID_9018" /v "PollTime" /t REG_DWORD /d "1" /f