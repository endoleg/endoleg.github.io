# shutdown (seconds)

1 minute: shutdown /r /t 60	

15 minute: shutdown /s /t 900	

1 hour: shutdown /r /t 3600	

2 hours: shutdown /r /t 7200	

3 hours: shutdown /r /t 10800	

12 hours: shutdown /s /t 43200	

24 hours: shutdown /r /t 86400	

# monitor-timeout --> never

powercfg -change -monitor-timeout-ac 0

# hibernate off
powercfg.exe /hibernate off 

# Set computer to never sleep
cmd /c "powercfg.exe /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c"

# ScreenSaveTimeOut
Set-ItemProperty -Path ‘HKCU:\Software\Policies\Microsoft\Windows\Control Panel\Desktop\’ -Name ScreenSaveTimeOut -Value 0
