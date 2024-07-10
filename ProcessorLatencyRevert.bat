@echo offReg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PerfBoostAtGuaranteed" /f
