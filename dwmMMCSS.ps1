Add-Type -TypeDefinition @'
using System;
using System.Runtime.InteropServices;

public static class DwmApi
{
    [DllImport("Dwmapi.dll", SetLastError=true)]
    public static extern int DwmEnableMMCSS(bool fEnableMMCSS);
}
'@

# Call the DwmEnableMMCSS function to enable MMCSS for DWM
$result = [DwmApi]::DwmEnableMMCSS($true)

if ($result -eq 0) {
    Write-Host "MMCSS scheduling for DWM has been successfully enabled."
} else {
    Write-Host "Failed to enable MMCSS scheduling for DWM. Error code: $result"
}
