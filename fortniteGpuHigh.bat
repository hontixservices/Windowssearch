@echo off
Reg.exe add "HKCU\Software\Microsoft\DirectX\UserGpuPreferences" /v "D:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /t REG_SZ /d "GpuPreference=2;" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX\UserGpuPreferences" /v "Z:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /t REG_SZ /d "GpuPreference=2;" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX\UserGpuPreferences" /v "E:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /t REG_SZ /d "GpuPreference=2;" /f
Reg.exe add "HKCU\Software\Microsoft\DirectX\UserGpuPreferences" /v "F:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /t REG_SZ /d "GpuPreference=2;" /f

Reg.exe add "HKCU\Software\Microsoft\DirectX\UserGpuPreferences" /v "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /t REG_SZ /d "GpuPreference=2;" /f
