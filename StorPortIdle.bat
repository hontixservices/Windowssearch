@echo off
:: Disable StorPort idle
for /F "tokens=*" %%a in ('REG QUERY "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Enum" /S /F "StorPort" ^| FINDSTR /E "StorPort"') DO (
    REG ADD "%%~a" /v EnableIdlePowerManagement /t REG_DWORD /d 0 /f >NUL 2>&1
    for /F "tokens=*" %%z IN ("%%~a") DO (
        SET "STR=%%~z"
        SET "STR=!STR:HKEY_LOCAL_MACHINE\System\CurrentControlSet\Enum\=!"
        SET "STR=!STR:\Device Parameters\StorPort=!"
    )
)

