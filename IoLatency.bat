@ECHO OFF


:latency
echo Disabling IO Latency Cap:
FOR /F "eol=E" %%a in ('REG QUERY "HKLM\System\CurrentControlSet\Services" /S /F "IoLatencyCap"^| FINDSTR /V "IoLatencyCap"') DO (
Reg.exe add "%%a" /v "IoLatencyCap" /t REG_DWORD /d "0" /f
FOR /F "tokens=*" %%z IN ("%%a") DO (
SET STR=%%z
SET STR=!STR:HKLM\System\CurrentControlSet\services\=!
SET STR=!STR:\Parameters=!
)
)


timeout /t 1 /nobreak > nul

echo Disabling IoLatencyCap on drivers, works only on some pcs, it may say access denied, if it does its fine

FOR /F "eol=E" %%x in ('REG QUERY "HKLM\SYSTEM\DriverDatabase\DriverPackages" /S /F "IoLatencyCap"^| FINDSTR /V "IoLatencyCap"') DO (
Reg.exe add "%%x" /v "IoLatencyCap" /t REG_DWORD /d "0" /f > nul
FOR /F "tokens=*" %%z IN ("%%a") DO (
SET STR=%%z
SET STR=!STR:HKLM\SYSTEM\DriverDatabase\DriverPackages\=!
SET STR=!STR:\Configurations\msahci_Inst\Services\storahci\Parameters=!
)
) 
timeout /t 1 /nobreak > nul
