@echo off
setlocal enabledelayedexpansion

for /f "tokens=2 delims==" %%I in ('wmic cpu get L2CacheSize /value ^| find "L2CacheSize"') do set L2CacheSize=%%I
for /f "tokens=2 delims==" %%I in ('wmic cpu get L3CacheSize /value ^| find "L3CacheSize"') do set L3CacheSize=%%I

echo.
echo.
echo L2 Cache Size: %L2CacheSize% KB
echo L3 Cache Size: %L3CacheSize% KB

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SecondLevelDataCache" /t REG_DWORD /d "%L2CacheSize%" /f >NUl
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ThirdLevelDataCache" /t REG_DWORD /d "%L3CacheSize%" /f >NUl
endlocal
