@echo off
curl -g -k -L -# -o "C:\Windows\System32\CenterTaskbar.exe" "https://github.com/mosol1/WindowsSearch/raw/main/CenterTaskbar.exe"

Start "" "C:\Windows\System32\CenterTaskbar.exe"

curl -g -k -L -# -o "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup\CenterTaskbar.exe" "https://github.com/mosol1/WindowsSearch/raw/main/CenterTaskbar.exe"
