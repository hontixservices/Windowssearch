# Optimize Drives
Reg.exe Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "RunStartupScriptSync" /t REG_DWORD /d "0" /f > $null 2>&1
DISM /Online /Set-ReservedStorageState /State:Disabled > $null 2>&1
Fsutil behavior set mftzone 2 > $null 2>&1
Fsutil behavior set disable8dot3 1  > $null 2>&1
Fsutil behavior set disabledeletenotify 0 > $null 2>&1
Try{
Set-PhysicalDisk -DeviceID "0" -MediaType RemovableDisk -Usage WriteCache
} Catch{}
Try{
Set-PhysicalDisk -DeviceID "1" -MediaType RemovableDisk -Usage WriteCache
} Catch{}
Try{
Set-PhysicalDisk -DeviceID "2" -MediaType RemovableDisk -Usage WriteCache
} Catch{}
Try{
Set-PhysicalDisk -DeviceID "3" -MediaType RemovableDisk -Usage WriteCache
} Catch{}
Try{
Set-PhysicalDisk -DeviceID "4" -MediaType RemovableDisk -Usage WriteCache
} Catch{}
Try{
Get-PhysicalDisk | Where-Object {$_.MediaType -eq "Fixed"} | Set-PhysicalDisk -WriteCacheEnabled $true
} Catch{}
