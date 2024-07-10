@echo off
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v HibernateEnabled /t REG_DWORD /d 0 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v EnergyEstimationEnabled /t REG_DWORD /d 0 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v CsEnabled /t REG_DWORD /d 0 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v PerfCalculateActualUtilization /t REG_DWORD /d 0 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v SleepReliabilityDetailedDiagnostics /t REG_DWORD /d 0 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v EventProcessorEnabled /t REG_DWORD /d 0 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v QosManagesIdleProcessors /t REG_DWORD /d 0 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v DisableVsyncLatencyUpdate /t REG_DWORD /d 1 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v DisableSensorWatchdog /t REG_DWORD /d 1 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v DeepIoCoalescingEnabled /t REG_DWORD /d 0 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v LowLatencyScalingPercentage /t REG_DWORD /d 64 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v HighPerformance /t REG_DWORD /d 1 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v MfBufferingThreshold /t REG_DWORD /d 0 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v AwayModeEnabled /t REG_DWORD /d 0 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v Class1InitialUnparkCount /t REG_DWORD /d 100 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v CustomizeDuringSetup /t REG_DWORD /d 1 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v HiberFileSizePercent /t REG_DWORD /d 0 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v TimerRebaseThresholdOnDripsExit /t REG_DWORD /d 30 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v EnergyEstimationDisabled /t REG_DWORD /d 1 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v PerfBoostAtGuaranteed /t REG_DWORD /d 1 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v CoreParkingDisabled /t REG_DWORD /d 1 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v HighestPerformance /t REG_DWORD /d 1 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v MinimumThrottlePercent /t REG_DWORD /d 0 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v MaximumThrottlePercent /t REG_DWORD /d 0 /f

