@echo off
powershell.exe Set-DNSClientServerAddress * -ServerAddresses ("208.67.222.222","208.67.220.220")
netsh interface ipv4 add dnsserver "Ethernet" address=208.67.222.222 index=1
netsh interface ipv4 add dnsserver "Ethernet" address=208.67.220.220 index=2

netsh interface ipv4 add dnsserver "Wi-Fi" address=208.67.222.222 index=1
netsh interface ipv4 add dnsserver "Wi-Fi" address=208.67.220.220 index=2

netsh interface ipv4 add dnsserver "WiFi" address=208.67.222.222 index=1
netsh interface ipv4 add dnsserver "WiFi" address=208.67.220.220 index=2