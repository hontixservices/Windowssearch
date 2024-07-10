@echo off
    Reg.exe add "HKLM\System\ControlSet001\Control\PriorityControl" /v "ConvertibleSlateMode" /t REG_DWORD /d "0" /f
   
    Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "Max Cached Icons" /t REG_SZ /d "4096" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "TimeStampInterval" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /ve /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "LastAliveStamp" /t REG_BINARY /d "d0baad0b" /f

Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "DirtyShutdown" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "DirtyShutdownTime" /t REG_BINARY /d "e407070000000c000a0019001100be00" /f

    Reg.exe add "HKLM\System\ControlSet001\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\System\ControlSet001\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
   Reg.exe add "HKLM\System\ControlSet001\Control\PriorityControl" /v "IRQ0Priority" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\System\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "35" /f
    Reg.exe add "HKLM\System\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Control\PriorityControl" /v "ConvertibleSlateMode" /t REG_DWORD /d "0" /f
    Reg.exe add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "2000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" /f
