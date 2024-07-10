@echo off
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\NetCache" /v "BackgroundSyncEnabled" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\NetCache" /v "EconomicalAdminPinning" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\NetCache" /v "Enabled" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\NetCache" /v "EventLoggingLevel" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\NetCache" /v "GoOfflineAction" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\NetCache" /v "NoCacheViewer" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\NetCache" /v "NoConfigCache" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\NetCache" /v "NoMakeAvailableOffline" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\NetCache" /v "NoReminders" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\NetCache" /v "NoReminders" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\NetCache" /v "SyncAtLogoff" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\NetCache" /v "SyncAtLogon" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\NetCache" /v "SyncEnabledForCostedNetwork" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\NetCache" /v "WorkOfflineDisabled" /t REG_DWORD /d "1" /f