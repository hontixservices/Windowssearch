@echo off
:: IRQ8Priority = Real-Time Clock:
Reg.exe Add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
:: IRQ0Priority = System Timer:
Reg.exe Add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ0Priority" /t REG_DWORD /d "1" /f
