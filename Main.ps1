#Import-Module ".\CheckValidOS.ps1" -Force
#$VersionFromEnviroment = Get-ValidOSEnvironment
#Write-Host The OS according to the enviroment is: $VersionFromEnviroment
#$VersionFromWmi = Get-ValidOSWMI
#Write-Host The OS according to WMI is: $VersionFromWmi

#$HostName = Read-Host "Write the computer name"
#$VersionFromWMiRemote = Get-ValidOSWMIRemote  $
#Write-Host The OS accordint to WMI remote is: $VersionFromWMiRemote


Import-Module ".\CheckInternalWebSite.ps1" -Force
$url = Read-Host Write the url
$result = Check-Website $url
Write-Host The result is $result
