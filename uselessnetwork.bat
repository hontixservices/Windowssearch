@echo off
Powershell.exe -command "& {Enable-NetAdapterBinding -Name "*" -ComponentID ms_tcpip}  
@echo Disable Microsoft LLDP Protocol Driver  
Powershell.exe -command "& {Disable-NetAdapterBinding -Name "*" -ComponentID ms_lldp}  
@echo Disable Link-Layer Topology Discovery Mapper I/O Driver  
Powershell.exe -command "& {Disable-NetAdapterBinding -Name "*" -ComponentID ms_lltdio}  
@echo Disable Microsoft Network Adapter Multiplexor Protocol  
Powershell.exe -command "& {Disable-NetAdapterBinding -Name "*" -ComponentID ms_implat}  
@echo Disable Link-Layer Topology Discovery Responder  
Powershell.exe -command "& {Disable-NetAdapterBinding -Name "*" -ComponentID ms_rspndr}  
@echo Disable Internet Protocol Version 6  
Powershell.exe -command "& {Disable-NetAdapterBinding -Name "*" -ComponentID ms_tcpip6}  
@echo Disable File and Printer Sharing  
Powershell.exe -command "& {Disable-NetAdapterBinding -Name "*" -ComponentID ms_server}  
@echo Disable Client for Microsoft Networks  
Powershell.exe -command "& {Disable-NetAdapterBinding -Name "*" -ComponentID ms_msclient}  
@echo Disable QoS Packet Schedular  
Powershell.exe -command "& {Disable-NetAdapterBinding -Name "*" -ComponentID ms_pacer}  

echo Network Adapter: Only Allow IPv4 . . .

powershell -Command "$progresspreference = 'silentlycontinue'"
powershell -Command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_lldp -ErrorAction SilentlyContinue"
powershell -Command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_lltdio -ErrorAction SilentlyContinue"
powershell -Command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_implat -ErrorAction SilentlyContinue"
powershell -Command "Enable-NetAdapterBinding -Name '*' -ComponentID ms_tcpip -ErrorAction SilentlyContinue"
powershell -Command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_rspndr -ErrorAction SilentlyContinue"
powershell -Command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_tcpip6 -ErrorAction SilentlyContinue"
powershell -Command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_server -ErrorAction SilentlyContinue"
powershell -Command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_msclient -ErrorAction SilentlyContinue"
powershell -Command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_pacer -ErrorAction SilentlyContinue"

:: Rerun to ensure settings stick
powershell -Command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_lldp -ErrorAction SilentlyContinue"
powershell -Command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_lltdio -ErrorAction SilentlyContinue"
powershell -Command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_implat -ErrorAction SilentlyContinue"
powershell -Command "Enable-NetAdapterBinding -Name '*' -ComponentID ms_tcpip -ErrorAction SilentlyContinue"
powershell -Command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_rspndr -ErrorAction SilentlyContinue"
powershell -Command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_tcpip6 -ErrorAction SilentlyContinue"
powershell -Command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_server -ErrorAction SilentlyContinue"
powershell -Command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_msclient -ErrorAction SilentlyContinue"
powershell -Command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_pacer -ErrorAction SilentlyContinue"

