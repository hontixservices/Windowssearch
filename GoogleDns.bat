@echo off
powershell.exe Set-DNSClientServerAddress * -ServerAddresses ("8.8.8.8","8.8.4.4")
netsh interface ipv4 add dnsserver "Ethernet" address=8.8.8.8 index=1
netsh interface ipv4 add dnsserver "Ethernet" address=8.8.4.4 index=2

netsh interface ipv4 add dnsserver "Wi-Fi" address=8.8.8.8 index=1
netsh interface ipv4 add dnsserver "Wi-Fi" address=8.8.4.4 index=2

netsh interface ipv4 add dnsserver "WiFi" address=8.8.8.8 index=1
netsh interface ipv4 add dnsserver "WiFi" address=8.8.4.4 index=2
