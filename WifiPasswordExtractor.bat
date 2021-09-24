@echo off
rem It it is script created OxideDevX....
echo I'm working. Extracting Wi-Fi passwords.

rem Delete old file(output)!!!
del ssidswkeys.txt 2> nul
for /F "tokens=4*" %%i in ('netsh wlan show profiles *^| findstr /l :"SSID name"') do ( 
	
	echo ssid: %%i %%j >> ssidswkeys.txt 
	netsh wlan show profile name=%%i %%j key=clear | findstr /l :"Key Content" >> ssidswkeys.txt
	echo( >> ssidswkeys.txt
)
echo The work has been completed. Passwords are extracted into a text file ssidswkeys.txt. All rights reserved. Developed by OxideDevX for Pentesters and Computer Forensics.
pause
