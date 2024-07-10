PowerShell -Command "Disable-MMAgent -PageCombining"

REG ADD "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePageCombining /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePagingCombining /t REG_DWORD /d 1 /f