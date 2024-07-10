
REM Set SVCSplitThreshold to your Memory Size
for /f "tokens=2 delims==" %%i in ('wmic os get TotalVisibleMemorySize /format:value') do set "mem=%%i"

set /a ram=mem + 1024000
call :SetRegistryValue "HKLM\System\CurrentControlSet\Control" "SvcHostSplitThresholdInKB" REG_DWORD %ram%

:SetRegistryValue
reg add "%~1" /v "%~2" /t %~3 /d %~4 /f