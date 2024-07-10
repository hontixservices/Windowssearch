@echo off

rem Revert registry changes related to game optimizations

rem Remove or modify each added registry entry
Reg.exe delete "HKCU\SOFTWARE\Microsoft\Games" /v "FpsAll" /f
Reg.exe delete "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGames" /f
Reg.exe delete "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGamesAll" /f
Reg.exe delete "HKCU\SOFTWARE\Microsoft\Games" /v "GameFluidity" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /f
Reg.exe delete "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /f
Reg.exe delete "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /f
Reg.exe delete "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /f
Reg.exe delete "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /f
Reg.exe delete "HKCU\System\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /f
Reg.exe delete "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /f
Reg.exe delete "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /f
Reg.exe delete "HKEY_CURRENT_USER\System\GameConfigStore\DirectX\dxgi" /v "DisableFullScreenOptimizations" /f

