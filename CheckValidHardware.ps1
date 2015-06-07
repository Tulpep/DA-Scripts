##############################         Available funtions        ###############################



#Get-ValidOS 
#Description:""
#Examples:
#*****************************        Disks and partitions       *******************************

#Get-ValidPhysicalDisk
#Description:" returns a boolean if the parameter "$toValidate" written as GB meets requirements "
#Example: PhysicalDisk of 120 GB     Get-ValidPhysicalDisk(1) = $False  
#Example: PhysicalDisk of 120 GB     Get-ValidPhysicalDisk(10000000) = $True

#Get-ValidDiskpartition
#Description:""
#Examples:   
#*****************************                 Ram               ********************************

#Get-ValidRam
#Description:" returns a boolean if the parameter "$toValidate" written as MB meets requirements "
#Example: Ram of 10 GB    Get-ValidRam(1) = $False  
#Example: Ram of 10 GB    Get-ValidRam(10000000) = $True 

#*****************************                 Ram               ********************************
#Get-ValidNetAdapter
#Description:""
#Examples:

################################################################################################







#*****************************        Disks and partitions       *******************************




function Get-ValidPhysicalDisk($toValidate)
{
   $diskCapacity = Get-WMIObject Win32_DiskDrive | ForEach-Object {$_.Size / 1GB}
        If ($toValidate -ge $diskCapacity)
            {
                return $true
            } 
            Else
            {
                return $false
            }
}



#*****************************        Disks and partitions       *******************************

#*****************************                 Ram               ********************************


function Get-ValidRam($toValidate)
{
   $ramCapacity = Get-WMIObject Win32_ComputerSystem | ForEach-Object {$_.TotalPhysicalMemory / 1MB}
        If ($toValidate -ge $ramCapacity)
            {
                return $true
            } 
            Else
            {
                return $false
            }
}







#*****************************                 Ram               ********************************