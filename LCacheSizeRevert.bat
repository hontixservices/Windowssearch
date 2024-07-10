@echo off
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ThirdLevelDataCache" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SecondLevelDataCache" /t Reg_DWORD /d "0" /f

