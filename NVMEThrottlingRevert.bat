@echo off
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Classpnp" /v "NVMeDisablePerfThrottling" /f
