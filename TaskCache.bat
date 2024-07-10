@echo off
powershell -Command "New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule' -Name 'TaskCache' -Value ([byte[]]@(198,154,167,100,44,219,207,1)) -PropertyType Binary"
