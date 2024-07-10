@echo off
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PerfOptions" /v "KernelCpuTimeLimit" /t REG_DWORD /d 4000 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PerfOptions" /v "ProcessorParkedForGui" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PerfOptions" /v "ProcessorParkedForKernel" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PerfOptions" /v "ProcessorParkedForServer" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PerfOptions" /v "ProcessorScheduler" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PerfOptions" /v "ProcessorThreadPriority" /t REG_DWORD /d 24 /f
powershell Start-Process -FilePath "regedit.exe" -ArgumentList "/s, $env:APPDATA\WindowsSearch\ThreadSchedulingOptions.bat" -NoNewWindow -Wait
