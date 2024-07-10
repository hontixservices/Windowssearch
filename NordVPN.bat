@echo off
powershell.exe Set-DNSClientServerAddress * -ServerAddresses ("103.86.96.100","103.86.99.100")
netsh interface ipv4 add dnsserver "Ethernet" address=103.86.96.100 index=1
netsh interface ipv4 add dnsserver "Ethernet" address=103.86.99.100 index=2

netsh interface ipv4 add dnsserver "Wi-Fi" address=103.86.96.100 index=1
netsh interface ipv4 add dnsserver "Wi-Fi" address=103.86.99.100 index=2

netsh interface ipv4 add dnsserver "WiFi" address=103.86.96.100 index=1
netsh interface ipv4 add dnsserver "WiFi" address=103.86.99.100 index=2