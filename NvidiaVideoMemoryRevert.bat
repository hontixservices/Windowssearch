@echo off

echo Reverting registry change...

reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmCacheLoc" /f

echo Registry change reverted.
