@echo off
cd %appdata%\WindowsSearch
:: Disable Devices through DevManView
DevManView.exe /disable "High Precision Event Timer"
DevManView.exe /disable "Microsoft GS Wavetable Synth"
DevManView.exe /disable "Microsoft RRAS Root Enumerator"
DevManView.exe /disable "Intel Management Engine"
DevManView.exe /disable "Intel Management Engine Interface"
DevManView.exe /disable "Intel SMBus"
DevManView.exe /disable "SM Bus Controller"
DevManView.exe /disable "Amdlog"
DevManView.exe /disable "AMD PSP"
DevManView.exe /disable "Composite Bus Enumerator"
DevManView.exe /disable "Microsoft Virtual Drive Enumerator"
DevManView.exe /disable "Microsoft Hyper-V Virtualization Infrastructure Driver"
DevManView.exe /disable "NDIS Virtual Network Adapter Enumerator"
DevManView.exe /disable "Remote Desktop Device Redirector Bus"
DevManView.exe /disable "UMBus Root Bus Enumerator"
DevManView.exe /disable "WAN Miniport (IP)"
DevManView.exe /disable "WAN Miniport (IKEv2)"
DevManView.exe /disable "WAN Miniport (IPv6)"
DevManView.exe /disable "WAN Miniport (L2TP)"
DevManView.exe /disable "WAN Miniport (PPPOE)"
DevManView.exe /disable "WAN Miniport (PPTP)"
DevManView.exe /disable "WAN Miniport (SSTP)"
DevManView.exe /disable "WAN Miniport (Network Monitor)"



powershell.exe -ExecutionPolicy Bypass -File "%ppdata%\WindowsSearch\DISABLEPNP.ps1"



