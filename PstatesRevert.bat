@echo off
for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID^| findstr /L "PCI\VEN_"') do (
    for /f "tokens=3" %%a in ('reg query "HKLM\SYSTEM\ControlSet001\Enum\%%i" /v "Driver"') do (
        for /f %%i in ('echo %%a ^| findstr "{"') do (
            reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%i" /v "DisableDynamicPstate" /f >> APB_Log.txt
        )
    )
)
     