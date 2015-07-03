function ValidProcessor ($logical, $physical)
{
    $cpu = Get-WmiObject -class Win32_Processor

    
    if (($cpu.NumberOfLogicalProcessors -ge [int]::Parse($logical)) -and $cpu.NumberOfCores -ge [int]::Parse($physical))
    {
        return $true
    }
    else
    {
        return $false
    }
}


$logical = Read-Host "Ingrese el numero de cores logicos del requerimiento"
$physical = Read-Host "Ingrese el numero de cores fisicos del requerimiento"
ValidProcessor $logical $physical