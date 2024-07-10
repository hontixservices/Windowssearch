$InterfaceIndex = (Get-NetAdapter).InterfaceIndex
Set-DnsClientServerAddress -InterfaceIndex $InterfaceIndex -ServerAddresses @()
Set-DnsClientServerAddress -InterfaceAlias "WiFi" -ResetServerAddresses
Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ResetServerAddresses
Set-DnsClientServerAddress -InterfaceAlias "Wi-Fi" -ResetServerAddresses
