#https://github.com/brandontylerstevens/BrandonTylerStevens-PowerShell/tree/Main/Windows%20Updates

Function Build-CVEReport {### Install the module from the PowerShell Gallery (must be run as Admin)
Install-Module -Name msrcsecurityupdates -force
Import-module msrcsecurityupdates
Set-MSRCApiKey -ApiKey "1bd79db501ce49a5ae1a117a2de252c8" -Verbose

Get-MsrcCvrfDocument -ID "$((get-date).Year)-May" | Get-MsrcSecurityBulletinHtml -Verbose | Out-File C:\Windows\Temp\MSRCSecurityUpdates.html
}




$computers = 'server1',"server2"
Function Get-LastUpdateInfo
{
    param(
            [parameter(Mandatory)]
            [string[]]$computerName,
            [int]$Months=-6)
    
    $date = (get-date).AddMonths($Months)
    $monthPositive = $Months * -1
    $propName = "UpdatedWithin"+$monthPositive+"Months"
    
    $hotfixes = $computerName | 
        ForEach-Object { 
                Get-HotFix -ComputerName $_ | Sort-Object installedon -Descending |
                     Select-Object -First 1
            }
    $hash = @{
                 name = $propName
                 expression = {
                                if ($_.InstalledON -le $date)
                                {
                                    $false
                                }
                                elseif(($_.InstalledON -gt $date))
                                {
                                    $true
                                }
                            }
                }

    $hotfixes  | Select-Object CSName,InstalledON,$hash  

}

Get-LastUpdateInfo -computerName $computers -Months -3
