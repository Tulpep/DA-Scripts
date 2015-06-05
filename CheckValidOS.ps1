function Get-ValidOSEnvironment
{
    $version = [Environment]::OSVersion.VerSion
    return $version.Major
}

function Get-ValidOSWMI
{
    $info = Get-WmiObject win32_operatingsystem
    return $info.version
}


function Get-ValidOSWMIRemote($computername)
{
    $info = Get-WmiObject win32_operatingsystem -ComputerName $computername
    return $info.version
}