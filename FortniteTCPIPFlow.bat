@echo off
regedit.exe /s "%ppdata%\WindowsSearch\FortniteTCPIPFlow.reg"
powershell Start-Process regedit.exe -ArgumentList '/s', "$env:APPDATA\WindowsSearch\FortniteTCPIPFlow.reg" -NoNewWindow -Wait
