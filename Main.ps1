Import-Module ".\CheckValidOS.ps1" -Force
$VersionFromEnviroment = Get-ValidOSEnvironment
Write-Host The OS according to the enviroment is: $VersionFromEnviroment
$VersionFromWmi = Get-ValidOSWMI
Write-Host The OS according to WMI is: $VersionFromWmi

$HostName = Read-Host "Write the computer name"
$VersionFromWMiRemote = Get-ValidOSWMIRemote  $
Write-Host The OS accordint to WMI remote is: $VersionFromWMiRemote

