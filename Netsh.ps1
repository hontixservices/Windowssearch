Set-NetTCPSetting -SettingName InternetCustom -Timestamps disabled
Set-NetTCPSetting -SettingName InternetCustom -InitialRto 2000
Set-NetTCPSetting -SettingName InternetCustom -ForceWS enabled
Set-NetTCPSetting -SettingName InternetCustom -MemoryPressureProtection disabled

Set-NetTCPSetting -SettingName DataCenterCustom -Timestamps disabled
Set-NetTCPSetting -SettingName DataCenterCustom -InitialRto 2000
Set-NetTCPSetting -SettingName DataCenterCustom -ForceWS enabled
Set-NetTCPSetting -SettingName DataCenterCustom -MemoryPressureProtection disabled

# For Windows Server 2012
Set-NetTCPSetting -SettingName InternetCustom -InitialCongestionWindow 10
Set-NetTCPSetting -SettingName DataCenterCustom -InitialCongestionWindow 10

# These settings are not available for Windows Server 2012
# netsh int tcp set global dca=enabled
# netsh int tcp set global ecncapability=enabled
# netsh int tcp set global netdma=disabled
# netsh int tcp set global nonsackrttresiliency=enabled
# netsh int tcp set global initialrto=1000
# netsh int tcp set global rss=enabled
# netsh int tcp set global rsc=enabled

netsh int tcp set global autotuninglevel=experimental
netsh int tcp set global fastopen=enabled
netsh int tcp set global pacingprofile=always
netsh int tcp set heuristics wsh=enabled forcews=enabled
netsh int tcp set security mpp=enabled startport=1024 numberofports=64500
netsh winsock set autotuning on
    netsh int ip reset 
    netsh int ip delete arpcache 
    netsh int ipv4 reset reset.log 
    netsh int ipv6 reset reset.log 
    netsh branchcache reset 
    netsh branchcache flush 
    netsh winsock reset
    netsh winsock reset proxy
    netsh winsock reset catalog


    netsh advfirewall firewall set rule group="Network Discovery" new enable=Yes
    netsh int tcp set heuristics disabled 
    netsh int tcp set supp internet congestionprovider=ctcp
    netsh int tcp set global rss=enabled
    netsh int tcp set global chimney=disabled
    netsh int tcp set global ecncapability=enabled
    netsh int tcp set global timestamps=disabled
    netsh int tcp set global initialRto=3000
    netsh int tcp set global timestamps=disabled 
    netsh int tcp set global rsc=disabled 
    netsh int tcp set global nonsackttresiliency=disabled
    netsh int tcp set global MaxSynRetransmissions=2 
    netsh int tcp set global fastopen=enabled
    netsh int tcp set global fastopenfallback=enabled
    netsh int tcp set global pacingprofile=off
    netsh int tcp set global hystart=disabled
    netsh int tcp set global dca=enabled
    netsh int tcp set global netdma=enabled
    netsh int 6to4 set state state=enabled
    netsh int udp set global uro=enabled
    netsh winsock set autotuning on
    netsh int tcp set supplemental template=custom icw=10
    netsh interface teredo set state enterprise
    netsh int tcp set security mpp=disabled
    netsh int tcp set security profiles=disabled
    netsh interface ipv4 set subinterface "Wi-Fi" mtu=1500 store=persistent
    netsh interface ipv6 set subinterface "Ethernet" mtu=1500 store=persistent
    netsh interface ipv6 set subinterface "Ethernet" mtu=1500 store=persistent
    netsh interface ipv4 set subinterface "Wi-Fi" mtu=1500 store=persistent
    netsh interface ipv6 6to4 set state state=disabled undoonstop=disabled
    netsh int tcp set supplemental custom congestionprovider = ctcp
    netsh int ipv6 set state disabled
    netsh int isatap set state disabled
    netsh int tcp set global autotuninglevel=normal
    ::netsh int tcp set global chimney=disabled
    netsh int tcp set global dca=enabled
    netsh int tcp set global ecn=enabled
    netsh int tcp set global ecncapability=enabled
    netsh int tcp set global initialRto=2000
    netsh int tcp set global maxsynretransmissions=2
    netsh int tcp set global netdma=enabled
    netsh int tcp set global nonsackrttresiliency=disabled
    netsh int tcp set global rsc=disabled
    netsh int tcp set global rss=enabled
    netsh int tcp set global timestamps=disabled
    netsh int tcp set heuristics disabled
    netsh int tcp set security mpp=disabled
    netsh int tcp set security profiles=disabled
    netsh int tcp set supplemental Custom
    netsh int tcp set supplemental Custom congestionprovider=ctcp
    netsh int tcp set supplemental Internet congestionprovider=ctcp
    netsh int tcp set supplemental InternetCustom
    netsh int tcp set supplemental InternetCustom congestionprovider=ctcp
    netsh int teredo set state disabled
    netsh winsock reset catalog 
    netsh winsock reset 
