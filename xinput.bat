@echo off
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\xinputhid\Parameters" /v "NoExtraBufferRoom" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\xinputhid\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\xinputhid\Parameters" /v "ConnectMultiplePorts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\xinputhid\Parameters" /v "SendOutputToAllPorts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\xinputhid\Parameters" /v "MaximumPortsServiced" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\xinputhid\Parameters" /v "DataQueueSize" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\xusb22\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\xusb22\Parameters" /v "NoExtraBufferRoom" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\xusb22\Parameters" /v "DataQueueSize" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\xusb22\Parameters" /v "ConnectMultiplePorts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\xusb22\Parameters" /v "SendOutputToAllPorts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\xusb22\Parameters" /v "MaximumPortsServiced" /t REG_DWORD /d "1" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\xinputhid\Parameters" /v "MinimumGamepadInputValue" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\xusb22\Parameters" /v "MinimumGamepadInputValue" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\xinputhid\Parameters" /v "InputReportRate" /t REG_DWORD /d "8000" /f