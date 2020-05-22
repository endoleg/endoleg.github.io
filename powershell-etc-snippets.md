# shutdown

shutdown /r /t 60	

PC wird nach 60 Sekunden neu gestartet.

shutdown /s /t 90	

PC wird nach 15 Minuten heruntergefahren.

shutdown /r /t 3600	

PC wird nach 1 Stunde neu gestartet.

shutdown /s /t 43200	

PC wird nach 12 Stunden heruntergefahren.

shutdown /r /t 86400	

PC wird nach einem Tag neu gestartet.

# hibernate off
powercfg.exe /hibernate off 

# Set computer to never sleep
cmd /c "powercfg.exe /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c"

# ScreenSaveTimeOut
Set-ItemProperty -Path ‘HKCU:\Software\Policies\Microsoft\Windows\Control Panel\Desktop\’ -Name ScreenSaveTimeOut -Value 0
