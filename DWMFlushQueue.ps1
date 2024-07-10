Add-Type -Name Win32 -Namespace PInvoke -MemberDefinition @"
    [DllImport("dwmapi.dll")]
    public static extern int DwmFlush();
"@

[PInvoke.Win32]::DwmFlush()
