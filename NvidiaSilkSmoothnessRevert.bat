@echo off

REM Delete registry entries for nvlddmkm\FTS
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v EnableRID73779 /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v EnableRID73780 /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v EnableRID74361 /f

REM Delete registry entries for NVIDIA Corporation\Global\FTS
reg delete "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v EnableRID44231 /f
reg delete "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v EnableRID64640 /f
reg delete "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v EnableRID66610 /f

REM Delete registry entry for TCCSupported
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TCCSupported" /f

REM Delete registry entry for NvCplUseColorCorrection under current user
reg delete "HKCU\SOFTWARE\NVIDIA Corporation\Global\NVTweak\Devices\509901423-0\Color" /v "NvCplUseColorCorrection" /f
