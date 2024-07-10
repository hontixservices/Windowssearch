@echo off
set "PowerShell=%SystemRoot%\System32\WindowsPowerShell\v1.0\PowerShell.exe"

%PowerShell% "Enable-NetAdapterBinding -Name '*' -ComponentID ms_tcpip6,ms_rspndr,ms_msclient,ms_pacer,ms_server,ms_lldp,ms_lltdio" > nul 2> nul
