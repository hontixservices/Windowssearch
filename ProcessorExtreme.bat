@echo off

powershell -Command "Start-Process powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File \"%appdata%\WindowsSearch\ExtremePowerTweaks.reg\"' -Verb RunAs"
