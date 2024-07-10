@echo off

REM Registry entries for amdkmdap service
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\amdkmdap" /v "KMD_APlusISharedMiniSegmentOptions" /t REG_DWORD /d 7 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\amdkmdap" /v "KMD_APlusISharedMiniSegmentSize" /t REG_DWORD /d 67108864 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\amdkmdap" /v "KMD_PXForceVideoPlaybackToIntegrated" /t REG_DWORD /d 0 /f

REM Registry entry for Cross-GPU display support
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\CLASS\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "KMD_EnableCrossGpuDisplaySupport" /t REG_DWORD /d 1 /f
