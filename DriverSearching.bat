@echo off

REM Set registry values for device installation policies
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall" /v DisableDeviceInstall /t REG_DWORD /d 1 /f > nul
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall" /v DisableSendRequestAdditionalSoftware /t REG_DWORD /d 1 /f > nul
