@echo off
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\usbxhci\Parameters" /v "ThreadPriority" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\USBHUB3\Parameters" /v "ThreadPriority" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "ThreadPriority" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl\Parameters" /v "ThreadPriority" /f
