
Function CheckDomainComputer
{
$Partofdomain = (Get-WmiObject -Class Win32_ComputerSystem).partofdomain

return $Partofdomain

}