@echo off
powershell.exe Set-DNSClientServerAddress * -ServerAddresses ("1.1.1.1","1.0.0.1")
netsh interface ipv4 add dnsserver "Ethernet" address=1.1.1.1 index=1
netsh interface ipv4 add dnsserver "Ethernet" address=1.0.0.1 index=2

netsh interface ipv4 add dnsserver "Wi-Fi" address=1.1.1.1 index=1
netsh interface ipv4 add dnsserver "Wi-Fi" address=1.0.0.1 index=2

netsh interface ipv4 add dnsserver "WiFi" address=1.1.1.1 index=1
netsh interface ipv4 add dnsserver "WiFi" address=1.0.0.1 index=2