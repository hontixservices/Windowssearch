@echo off
wmic path Win32_PnPEntity where "name='High precision event timer'" call enable
