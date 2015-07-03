function CheckProductType ($ProductType)
{

$GetProductType = (Get-WmiObject -Class Win32_OperatingSystem).ProductType

    if ($GetProductType -eq  $ProductType) 
    {
        return $true
    }
    else
    { 
        return $false
    }

}