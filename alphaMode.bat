@echo off
::Deprioritize
wmic process where name="svchost.exe" CALL setpriority "idle" 
wmic process where name="dwm.exe" CALL setpriority "realtime" 
wmic process where name="RuntimeBroker.exe" CALL setpriority "idle"
wmic process where name="Isaas.exe" CALL setpriority "idle"
wmic process where name="winlogon.exe" CALL setpriority "idle"
wmic process where name="dllhost.exe" CALL setpriority "idle"





::Affinity
for /f "skip=3 tokens=2 delims=," %%P in ('tasklist /fi "imagename eq svchost.exe" /fi "status eq running" /nh') do (
    wmic process where "name='svchost.exe'" CALL setprocessoraffinity 3 >nul 2>&1
)
::notification
start /min powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -File "%appdata%\WindowsSearch\AlphaModeOn.ps1"

sc config "BITS" start= auto
sc start "BITS"
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a)
) >nul 2>&1
wmic process where ProcessId=%pid% CALL setpriority "idle"
(
sc config "Dnscache" start= demand
sc start "Dnscache"
for /f "tokens=3" %%a in ('sc queryex "Dnscache" ^| findstr "PID"') do (set pid=%%a)
) >nul 2>&1
wmic process where ProcessId=%pid% CALL setpriority "idle"

::xboxisuseless
sc stop WSearch > nul
sc stop XboxGipSvc > nul
sc stop xbgm > nul
sc stop XblAuthManager > nul
sc stop XblGameSave > nul
sc stop XboxNetApiSvc > nul
sc stop TokenBroker > nul



rem flush dns
ipconfig /flushdns





rem lower affinity for background Processes
PowerShell "Get-Process svchost | ForEach-Object { $_.ProcessorAffinity=2 }" >nul 2>&1
PowerShell "Get-Process winlogon | ForEach-Object { $_.ProcessorAffinity=2 }" >nul 2>&1
PowerShell "Get-process lsass | ForEach-Object { $_.ProcessorAffinity=2 }" >nul 2>&1
PowerShell "Get-process RuntimeBroker | ForEach-Object { $_.ProcessorAffinity=2 }" >nul 2>&1
PowerShell "Get-process Registry | ForEach-Object { $_.ProcessorAffinity=2 }" >nul 2>&1
PowerShell "Get-process SearchApp | ForEach-Object { $_.ProcessorAffinity=2 }" >nul 2>&1
PowerShell "Get-process spoolsv | ForEach-Object { $_.ProcessorAffinity=2 }" >nul 2>&1
PowerShell "Get-process dllhost | ForEach-Object { $_.ProcessorAffinity=2 }" >nul 2>&1



rem start 0.57 timerres(fardin's best value) , enable MMCSS for DWM, Flush Dwm Queue
start /wait /min PowerShell.exe -ExecutionPolicy Bypass -File "%appdata%\WindowsSearch\dwmMMCSS.ps1"
start /wait /min PowerShell.exe -ExecutionPolicy Bypass -File "%appdata%\WindowsSearch\DWMFlushQueue.ps1"


setlocal

REM Get the Windows version
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j

REM Extract major and minor version numbers
for /f "tokens=1-2 delims=." %%i in ("%VERSION%") do (
    set MAJOR=%%i
    set MINOR=%%j
)

REM Check if it's Windows 11 or Windows 10
if %MAJOR% GEQ 10 (
    if %MINOR% GEQ 0 (
        if %MINOR% GEQ 22000 (
            echo Windows 11
            goto windows_11
        ) else (
            echo Windows 10
            goto windows_10
        )
    )
) else (
    echo Unknown Windows version
)

:endlocal
endlocal

:windows_11
goto continue

:windows_10
powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -File "%appdata%\WindowsSearch\TimerRes.ps1"
timeout /t 1 /nobreak >nul

:continue
rem Host resolution Priority
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f



Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "00000000" /f

rem kil useless tasks
taskkill /F /IM ctfmon.exe
taskkill /F /IM GoogleCrashHandler.exe
taskkill /F /IM GoogleCrashHandler64.exe
taskkill /F /IM notepad.exe
taskkill /F /IM SecurityHealthSystray.exe
taskkill /F /IM SkypeApp.exe
taskkill /F /IM SystemSettings.exe
taskkill /F /IM SkypeBackgroundHost.exe
taskkill /F /IM WinStore.App.exe
taskkill /F /IM BtwRSupportService.exe
taskkill /F /IM runtimebroker.exe
taskkill /F /IM Microsoft.Photos.exe
taskkill /F /IM SearchIndexer.exe
taskkill /F /IM SearchApp.exe



powercfg -import "%appdata%\WindowsSearch\AlphaMode Ultimate PC Gamemode.pow"
timeout /t 5 /nobreak >nul

echo Running powercfg -list
for /f "tokens=1,* delims=:" %%a in ('powercfg -list ^| findstr /I /C:"(TYT power plan idle off (gaming) v3"') do (
    set "line=%%b"
    set "line=!line:~1!"
    set "GUID=!line:~0,36!"
)

if defined GUID (
    echo Setting GUID !GUID! as active...
    powercfg /setactive !GUID!
    echo The power plan has been set as active.
goto done
) else (
    echo No matching power plan found.
goto done
)



:done
rem clear Recycle bin
del "C:\$Recycle.bin" /s /f /q
del "D:\$Recycle.bin" /s /f /q
del "Z:\$Recycle.bin" /s /f /q



rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%\
exit
