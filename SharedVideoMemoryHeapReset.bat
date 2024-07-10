 @echo off

 reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX /v MaxSharedVideoMemory
 reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\DirectX /v MaxSharedVideoMemory
