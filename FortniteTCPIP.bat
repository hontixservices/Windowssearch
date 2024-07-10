@echo off
regedit.exe /s "%ppdata%\WindowsSearch\FortniteTCPIP.reg"
powershell Start-Process regedit.exe -ArgumentList '/s', "$env:APPDATA\WindowsSearch\FortniteTCPIP.reg" -NoNewWindow -Wait
