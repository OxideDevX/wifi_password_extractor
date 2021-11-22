@echo off
rem It it is script created OxideDevX....
echo I'm working. Extracting you Wi-Fi passwords.

rem Delete old file(output)!!!
del ssidswkeys.txt 2> nul
for /F "tokens=4*" %%i in ('netsh wlan show profiles *^| findstr /l :"SSID name"') do ( 
	
	echo ssid: %%i %%j >> ssidswkeysextraxt.txt
	netsh wlan show profile name=%%i %%j key=clear | findstr /l :"Key Content" >> ssidswkeysextraxt.txt 
	echo( >> ssidswkeysextraxt.txt 
)
echo The work has been completed. 
echo Passwords are extracted into a text file ssidswkeysextraxt.txt . 
echo All rights reserved. 
echo It is script developed by OxideDevX for Pentesters and Computer Forensics. Happy day!
pause
