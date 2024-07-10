@echo off

cd %appdata%\WindowsSearch

:: enable Devices through DevManView
DevManView.exe /enable "High Precision Event Timer"
DevManView.exe /enable "Microsoft GS Wavetable Synth"
DevManView.exe /enable "Microsoft RRAS Root Enumerator"
DevManView.exe /enable "Intel Management Engine"
DevManView.exe /enable "Intel Management Engine Interface"
DevManView.exe /enable "Intel SMBus"
DevManView.exe /enable "SM Bus Controller"
DevManView.exe /enable "Amdlog"
DevManView.exe /enable "AMD PSP"
DevManView.exe /enable "Composite Bus Enumerator"
DevManView.exe /enable "Microsoft Virtual Drive Enumerator"
DevManView.exe /enable "Microsoft Hyper-V Virtualization Infrastructure Driver"
DevManView.exe /enable "NDIS Virtual Network Adapter Enumerator"
DevManView.exe /enable "Remote Desktop Device Redirector Bus"
DevManView.exe /enable "UMBus Root Bus Enumerator"
DevManView.exe /enable "WAN Miniport (IP)"
DevManView.exe /enable "WAN Miniport (IKEv2)"
DevManView.exe /enable "WAN Miniport (IPv6)"
DevManView.exe /enable "WAN Miniport (L2TP)"
DevManView.exe /enable "WAN Miniport (PPPOE)"
DevManView.exe /enable "WAN Miniport (PPTP)"
DevManView.exe /enable "WAN Miniport (SSTP)"
DevManView.exe /enable "WAN Miniport (Network Monitor)"
DevManView.exe /enable "Direct memory access controller"
DevManView.exe /enable "Legacy device"
DevManView.exe /enable "Numeric Data Processor"
DevManView.exe /enable "System Timer"



