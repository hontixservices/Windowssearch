@echo off
reg delete "HKEY_LOCAL_MACHINE\SYSTEM" /v MinimumFileCacheSize /f
