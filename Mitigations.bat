@echo off


REM Disable MemoryPressureProtection
PowerShell -Command "Set-NetTCPSetting -SettingName '*' -MemoryPressureProtection Disabled" >nul 2>&1

REM Get CPU information
for /f "tokens=2 delims=: " %%a in ('wmic cpu get name /value') do (
    set "CPU=%%a"
    goto :checkCPU
)
:checkCPU

REM Check CPU and set registry value accordingly
if "%CPU%"=="AMD" (
    Reg Add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "2" /f 
) else (
    Reg Add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f 
)

