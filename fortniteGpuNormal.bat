@echo off
Reg.exe delete "HKCU\Software\Microsoft\DirectX\UserGpuPreferences" /v "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f

