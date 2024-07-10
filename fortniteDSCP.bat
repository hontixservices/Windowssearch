@echo off
	Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\Fortnite" /v "Application Name" /t REG_SZ /d "FortniteClient-Win64-Shipping.exe" /f
	Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\Fortnite" /v "Version" /t REG_SZ /d "1.0" /f
	Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\Fortnite" /v "Protocol" /t REG_SZ /d "*" /f
	Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\Fortnite" /v "Local Port" /t REG_SZ /d "*" /f
	Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\Fortnite" /v "Local IP" /t REG_SZ /d "*" /f
	Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\Fortnite" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
	Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\Fortnite" /v "Remote Port" /t REG_SZ /d "*" /f
	Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\Fortnite" /v "Remote IP" /t REG_SZ /d "*" /f
	Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\Fortnite" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
	Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\Fortnite" /v "DSCP Value" /t REG_SZ /d "46" /f
	Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\Fortnite" /v "Throttle Rate" /t REG_SZ /d "-1" /f
