@echo off
title Wi-Fi екстрактор паролей.
rem Цей скріпт створено форензік спеціалістом OxideDevX(Олександр)....
echo Вилучаю Wi-Fi паролі. 
echo Паролі вилучено ssidswkeysextraxt.txt . 

rem Видаліть старий файл!!!
del ssidswkeysextraxt.txt 2> nul
for /F "tokens=4*" %%i in ('netsh wlan show profiles *^| findstr /l :"SSID name"') do ( 
	
	echo ssid: %%i %%j >> ssidswkeysextraxt.txt
	netsh wlan show profile name=%%i %%j key=clear | findstr /l :"Key Content" >> ssidswkeysextraxt.txt 
	echo( >> ssidswkeysextraxt.txt 
)
echo Робота скріпта завершена.
echo Скріпт створено Олександром / OxideDevX для спеціалістів в галузі кіберкриміналістики(форензіки).
exit
