@echo off
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "TimeStampInterval" /t REG_DWORD /d "0" /f
:: Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /ve /t REG_DWORD /d "3" /f
:: Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "LastAliveStamp" /t REG_BINARY /d "d0baad0b" /f
:: Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "DirtyShutdown" /t REG_DWORD /d "1" /f
:: Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "DirtyShutdownTime" /t REG_BINARY /d "e407070000000c000a0019001100be00" /f
