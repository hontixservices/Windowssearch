@echo off
powershell.exe Set-DNSClientServerAddress * -ServerAddresses ("9.9.9.9","149.112.112.11")
netsh interface ipv4 add dnsserver "Ethernet" address=9.9.9.9 index=1
netsh interface ipv4 add dnsserver "Ethernet" address=149.112.112.11 index=2

netsh interface ipv4 add dnsserver "Wi-Fi" address=9.9.9.9 index=1
netsh interface ipv4 add dnsserver "Wi-Fi" address=149.112.112.11 index=2

netsh interface ipv4 add dnsserver "WiFi" address=9.9.9.9 index=1
netsh interface ipv4 add dnsserver "WiFi" address=149.112.112.11 index=2