@echo off

echo Reverting DebugPollInterval...
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DebugPollInterval" /f

echo Reverting CopyBufferSize...
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "CopyBufferSize" /f

echo Reverting CopyFileBufferedSynchronousIo...
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "CopyFileBufferedSynchronousIo" /f

echo Reverting CopyFileChunkSize...
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "CopyFileChunkSize" /f

echo Reverting CopyFileOverlappedCount...
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "CopyFileOverlappedCount" /f

echo Registry settings reverted.
