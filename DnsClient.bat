@echo off
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "DisableSmartNameResolution" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "DisableSmartProtocolReordering" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "EnableIdnMapping" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "EnableMulticast" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "PreferLocalOverLowerBindingDNS" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "RegistrationEnabled" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "UpdateSecurityLevel" /t REG_DWORD /d "0" /f