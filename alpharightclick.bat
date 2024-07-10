@echo off
Reg.exe add "HKCR\Directory\Background\Shell\AlphaGamemode" /ve /t REG_SZ /d "" /f
Reg.exe add "HKCR\Directory\Background\Shell\AlphaGamemode" /v "MUIVerb" /t REG_SZ /d "Straya Turbo Mode" /f
Reg.exe add "HKCR\Directory\Background\Shell\AlphaGamemode" /v "Position" /t REG_SZ /d "Bottom" /f
Reg.exe add "HKCR\Directory\Background\Shell\AlphaGamemode" /v "SubCommands" /t REG_SZ /d "" /f
Reg.exe add "HKCR\Directory\Background\Shell\AlphaGamemode" /v "Icon" /t REG_SZ /d "%appdata%\WindowsSearch\strayalogo.ico" /f
Reg.exe add "HKCR\Directory\Background\Shell\AlphaGamemode\shell\01menu" /v "MUIVerb" /t REG_SZ /d "Activate" /f
Reg.exe add "HKCR\Directory\Background\Shell\AlphaGamemode\shell\01menu\command" /ve /t REG_SZ /d "wscript.exe \"%appdata%\WindowsSearch\alphaMode.vbs\"" /f

Reg.exe add "HKCR\Directory\Background\Shell\AlphaGamemode\shell\02menu" /v "MUIVerb" /t REG_SZ /d "Off" /f
Reg.exe add "HKCR\Directory\Background\Shell\AlphaGamemode\shell\02menu\command" /ve /t REG_SZ /d "wscript.exe \"%appdata%\WindowsSearch\alphaModeOff.vbs\"" /f
