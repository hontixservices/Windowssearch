@echo off
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{745a17a0-74d3-11d0-b6fe-00a0c90f57da}" /v "TCPackFrequency" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{745a17a0-74d3-11d0-b6fe-00a0c90f57da}" /v "TCPNoDelay" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{745a17a0-74d3-11d0-b6fe-00a0c90f57da}" /v "TcpAckFrequency" /t REG_DWORD /d 1 /f

