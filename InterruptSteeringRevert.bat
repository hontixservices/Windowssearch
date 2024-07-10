@echo off
reg delete "HKEY_LOCAL_MACHINE\SYSTEM" /v InterruptSteeringDisabled /f
REG delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager" /v InterruptSteeringDisabled /f
