Import-Module ".\CheckValidOS.ps1" -Force
$VersionFromEnviroment = Get-ValidOSEnvironment
Write-Host The OS according to the enviroment is: $VersionFromEnviroment
$VersionFromWmi = Get-ValidOSWMI

Write-Host The OS according to WMI is: $VersionFromWmi
$HostName = Read-Host "Write the computer name"
$VersionFromWMiRemote = Get-ValidOSWMIRemote  $HostName
Write-Host The OS accordint to WMI remote is: $VersionFromWMiRemote


Import-Module ".\CheckPort.ps1" -Force

$Pc = Read-Host Write the name of the server
$Port = Read-Host Port to test
$Protocol = Read-Host Protocol to test
Check-Port $Pc $Port $Protocol