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

#Get-ValidRam
#Description:""
#Examples:

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