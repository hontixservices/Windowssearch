@echo off

regedit.exe /s "%appdata%\WindowsSearch\InternetSettings.reg"

    Reg.exe add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "CertificateRevocation" /t REG_DWORD /d "1" /f
    Reg.exe add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "DisableCachingOfSSLPages" /t REG_DWORD /d "0" /f
    Reg.exe add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "DisableIDNPrompt" /t REG_DWORD /d "0" /f
 
    Reg.exe add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "EnableNegotiate" /t REG_DWORD /d "1" /f
    Reg.exe add "HKU\.DEFAULT\Microsoft\Windows\CurrentVersion\Internet Settings" /v "EnablePunycode" /t REG_DWORD /d "1" /f

powershell -Command "Invoke-WebRequest 'https://github.com/FardinXS/VorteX/raw/main/Source/Registry/Network/InternetTweaks.reg' -OutFile '%appdata%\WindowsSearch\InternetTweaks.reg'"
regedit.exe /s "%appdata%\WindowsSearch\InternetTweaks.reg"
