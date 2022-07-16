@echo off
title Wi-Fi password extractor
rem It it is script created OxideDevX(Alexander)....
echo I'm working. Extracting you Wi-Fi passwords. 
echo Passwords extracted into a text file ssidswkeysextraxt.txt . 

rem Delete old file(output file)!!!
del ssidswkeysextraxt.txt 2> nul
for /F "tokens=4*" %%i in ('netsh wlan show profiles *^| findstr /l :"SSID name"') do ( 
	
	echo ssid: %%i %%j >> ssidswkeysextraxt.txt
	netsh wlan show profile name=%%i %%j key=clear | findstr /l :"Key Content" >> ssidswkeysextraxt.txt 
	echo( >> ssidswkeysextraxt.txt 
)
echo The work has been completed. 
echo All rights reserved. 2022.
echo It is script developed by OxideDevX for Pentesters and specialist Computer Forensics. Happy day!
pause
exit
