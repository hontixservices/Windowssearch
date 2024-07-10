Enable-NetAdapterLso -Name *
netsh int tcp set global fastopen=enabled
netsh int tcp set global pacingprofile=always

netsh int tcp set security mpp=disabled startport=1024 numberofports=64500
netsh int tcp set security mpp=disabled
netsh int tcp set security profiles=disabled

#win10
netsh int tcp set supplemental internet congestionprovider=dctcp
netsh int tcp set supplemental datacenter congestionprovider=dctcp