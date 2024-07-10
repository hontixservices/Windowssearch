# Set the PowerShell window title
$host.UI.RawUI.WindowTitle = "StrayaPrem"

# Load necessary .NET assemblies
[reflection.assembly]::loadwithpartialname("System.Windows.Forms")
[reflection.assembly]::loadwithpartialname("System.Drawing")

# Path to the custom icon file
$iconPath = "$env:APPDATA\WindowsSearch\strayalogo.ico"

# Check if the icon file exists
if (Test-Path $iconPath) {
    # Create a new NotifyIcon object
    $notify = New-Object System.Windows.Forms.NotifyIcon

    # Load the custom icon
    $icon = New-Object System.Drawing.Icon $iconPath

    # Set the icon for the NotifyIcon object
    $notify.Icon = $icon
} else {
    # Use the default information icon if custom icon is not found
    $notify = New-Object System.Windows.Forms.NotifyIcon
    $notify.Icon = [System.Drawing.SystemIcons]::Information
}

# Make the NotifyIcon visible
$notify.Visible = $true

# Set the text for the notification
$title = "Alpha Mode"
$message = "Alpha mode has successfully been Disabled"

# Display a balloon tip notification for 10 seconds
$notify.ShowBalloonTip(10000, $title, $message, [System.Windows.Forms.ToolTipIcon]::None)

# Optional: Keep the script running to allow the notification to display before the script ends
Start-Sleep -Seconds 12

# Clean up: Hide the NotifyIcon and dispose of it
$notify.Visible = $false
$notify.Dispose()
