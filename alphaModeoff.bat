@echo off
wmic process where name="dwm.exe" CALL setpriority "high" 
wmic process where name="audiodg.exe" CALL setpriority "normal"

::set timer res to default
taskkill /F /IM powershell.exe


wmic path win32_videocontroller get name | findstr /i "NVIDIA" > nul
if %errorlevel% equ 0 (
    echo NVIDIA GPU found.
    goto Nvidia
) else (
    echo NVIDIA GPU not found.
    goto skipnvidia
)




:Nvidia

taskkill /F /IM nvidia_tweaker.exe
:skipnvidia

Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "10" /f

start ctfmon.exe

::notification
start /min powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -File "%appdata%\WindowsSearch\AlphaModeOff.ps1"


timeout /t 10 /nobreak >nul
taskkill /F /IM explorer.exe & start explorer


exit
