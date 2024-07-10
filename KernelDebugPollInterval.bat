@echo off

echo Setting DebugPollInterval...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DebugPollInterval" /t REG_DWORD /d 1000 /f

echo Setting CopyBufferSize...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "CopyBufferSize" /t REG_DWORD /d 1048576 /f

echo Setting CopyFileBufferedSynchronousIo...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "CopyFileBufferedSynchronousIo" /t REG_DWORD /d 64 /f

echo Setting CopyFileChunkSize...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "CopyFileChunkSize" /t REG_DWORD /d 32768 /f

echo Setting CopyFileOverlappedCount...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "CopyFileOverlappedCount" /t REG_DWORD /d 32 /f

echo Registry settings applied.
