##############################         Available funtions         ##############################



#Get-ValidOS 
#Description:""

#Get-ValidDisk
#Description:""

#Get-ValidRam
#Description:""

#Get-ValidNetAdapter
#Description:""


################################################################################################


#ProductType 1 = Desktop OS
#ProductType 2 = Server OS – Domain Controller
#ProductType 3 = Server OS – Not a Domain Controller
# https://msdn.microsoft.com/en-us/library/windows/desktop/ms724833(v=vs.85).aspx




function Get-ValidOSServer($oSMajorVersion, $oSMinorVersion, $oSEdition, $osProductType, $SP )
{
   $getVersion = [Environment]::OSVersion.Version
   $getSP = get-WmiObject -Class Win32_OperatingSystem |% ServicePackMinorVersion  
     
     
   $Version.Major
  $Version.Minor


If (($getVersion.Major -ge $oSMajorVersion) -or ($oSMajorVersion -eq $Null))
    {
    if ($Version.Minor -ge $oSMinorVersion) 
            {
            

                if ($getSP -ge $SP) 
            {
            return $true
            }
            else
            { 
            return $false
            }
            }
            else
            { 
            return $false
            }
    } 
    Else
    {
      
        return $false  
    }
}

Get-ValidOSServer  -oSMinorVersion 6


if ([System.IntPtr]::Size -eq 4) { "32-bit" } else { "64-bit" }

##################
$oSEdition = get-WmiObject -Class Win32_OperatingSystem |% ProductType
$getProductType
if ($getProductType -eq  $osProductType) 
            {
            return $true
            }
            else
            { 
            return $false
            }


################################3
$getProductType = get-WmiObject -Class Win32_OperatingSystem |% ProductType
$getProductType
if ($getProductType -eq  $osProductType) 
            {
            return $true
            }
            else
            { 
            return $false
            }
##################
             $getSP = get-WmiObject -Class Win32_OperatingSystem |% ServicePackMinorVersion

if ($getSP -ge $SP) 
            {
            return $true
            }
            else
            { 
            return $false
            }


            #######################

            function Get-ValidOSServer( $oSMinorVersion)
{
$Version = [Environment]::OSVersion.Version

if ($Version.Minor -ge $oSMinorVersion) 
            {
            return $false
            }
            else
            { 
            return $true
 }
 }
 Get-ValidOSServer -oSMinorVersion 13    


