@echo off
setlocal enabledelayedexpansion

set "WHITELIST=ACPI AcpiDev AcpiPmi AFD AMDPCIDev amdgpio2 amdgpio3 AmdPPM amdpsp amdsata amdsbs amdxata asmtxhci atikmdag BasicDisplay BasicRender dc1-controll Disk DXGKrnl e1iexpress e1rexpress genericusbfn hwpolicy IntcAzAudAdd kbdclass kbdhid MMCSS monitor mouclass mouhid mountmgr mt7612US MTConfig NDIS nvdimm nvlddmkm pci PktMon Psched rt640x64 RTCore64 RzCommon RzDev_0244 Tcpip usbehci usbhub USBHUB3 USBXHCI Wdf01000 xboxgip xinputhid"

set "DRIVERLIST="

for %%i in (%WHITELIST%) do (
    echo Checking for %%i...
    for /f "tokens=*" %%j in ('driverquery ^| findstr /i "%%i"') do (
        echo Found: %%j
        set "DRIVERLIST=!DRIVERLIST!%%j\0"
    )
)

echo Adding to registry...
reg add "HKLM\SYSTEM\currentcontrolset\control\session manager\Memory Management" /v "LargePageDrivers" /t REG_MULTI_SZ /d "!DRIVERLIST:~0,-1!" /f /reg:32


