@echo off
bcdedit /set maxproc Yes
regedit.exe /s "%ppdata%\WindowsSearch\AllCores.reg"
