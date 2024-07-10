@echo off
netsh int tcp set heuristics wsh=enabled forcews=enabled
netsh int tcp set heuristics disabled



