@echo off
set "PowerShell=%WinDir%\System32\WindowsPowerShell\v1.0\PowerShell.exe -NoProfile -NonInteractive -ExecutionPolicy Bypass -Command"
%PowerShell% "Disable-NetAdapterBinding -Name "*" -ComponentID ms_tcpip6, ms_rspndr, ms_msclient, ms_pacer, ms_server, ms_lldp, ms_lltdio" > nul 2> nul
