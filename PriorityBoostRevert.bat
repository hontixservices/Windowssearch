@echo off


Reg.exe delete "HKLM\System\CurrentControlSet\Control\PriorityControl" /v "ConvertibleSlateMode" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "Max Cached Icons" /f


    Reg.exe add "HKLM\System\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Control\PriorityControl" /v "ConvertibleSlateMode" /t REG_DWORD /d "0" /f
    
