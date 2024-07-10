@echo off
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Direct3D" /v "DisableInactivate" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Direct3D" /v "EnableDebugging" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Direct3D" /v "EnableMultimonDebugging" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Direct3D" /v "FullDebug" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Direct3D" /v "LoadDebugRuntime" /f
