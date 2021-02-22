# Shutdown ansetzen für in 2,5 Stunden
 shutdown /r /t 9000 

# Shutdown ansetzen für in 1 Stunde
# shutdown /r /t 3600

#Taskbar in den Hintergrund
&{$p='HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3';$v=(Get-ItemProperty -Path $p).Settings;$v[8]=3;&Set-ItemProperty -Path $p -Name Settings -Value $v;&Stop-Process -f -ProcessName explorer}

#Alles klein machen außer Zoom
& 'C:\SetForegroundWindow.ps1' -name *.exe -command SW_Minimize
& 'C:\SetForegroundWindow.ps1' -name explorer.exe -command SW_Minimize
& 'C:\SetForegroundWindow.ps1' -name zoom.exe -command SW_Restore;& 'C:\SetForegroundWindow.ps1' -name powershell_ise.exe -command SW_Minimize


Get-Process 

$target = "Firefox"
$target = "Zoom"
"---------------------------------"
"Prozess $target exe wird beobachtet"
$process = Get-Process | Where-Object {$_.ProcessName -eq $target}
while ($true)
{
while (!($process))
{
$process = Get-Process | Where-Object {$_.ProcessName -eq $target}
start-sleep -s 5
}
if ($process)
{
"$target ist gestartet!"
$process.WaitForExit()
start-sleep -s 2
$process = Get-Process | Where-Object {$_.ProcessName -eq $target}
"---------------------------------"
"$target wurde beendet!"
}
}

#Taskbar wieder in den Vordergrund
&{$p='HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3';$v=(Get-ItemProperty -Path $p).Settings;$v[8]=2;&Set-ItemProperty -Path $p -Name Settings -Value $v;&Stop-Process -f -ProcessName explorer}


###############################
#   NOTIZEN
###############################

#https://www-faqforge-com.cdn.ampproject.org/v/s/www.faqforge.com/windows/monitor-processes-with-windows-powershell/amp/?amp_js_v=0.1&usqp=mq331AQFKAGwASA%3D#origin=https%3A%2F%2Fwww.google.de&prerenderSize=1&visibilityState=prerender&paddingTop=32&p2r=0&horizontalScrolling=0&csi=1&aoh=15906254889437&viewerUrl=https%3A%2F%2Fwww.google.de%2Famp%2Fs%2Fwww.faqforge.com%2Fwindows%2Fmonitor-processes-with-windows-powershell%2Famp%2F&history=1&storage=1&cid=1&cap=navigateTo%2Ccid%2CfullReplaceHistory%2Cfragment%2CreplaceUrl%2CiframeScroll
#Monitor Processes With Windows PowerShell
# Maybe you have already come across applications that require you to rearrange things on your desktop for optimal visibility or which you only use in combination with other programs or items - an automated startup or rearrangement would come handy in those situation.
# The following little PowerShell script allows just this - automatical actions on process start and/or end.

#https://github.com/guyrleech/Microsoft/blob/master/Monitor%20process%20start%20stop.ps1
#https://github.com/guyrleech/Microsoft/blob/master/Pause%20Resume%20Processes.ps1
#https://github.com/guyrleech/Microsoft/blob/master/Check%20and%20start%20processes.ps1
