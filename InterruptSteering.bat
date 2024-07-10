@echo off
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM" /v "InterruptSteeringDisabled" /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager" /v "InterruptSteeringDisabled" /t REG_DWORD /d 1 /f
