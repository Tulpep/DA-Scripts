#ScriptName: Validate Network Interface Cards
#Author: Jason Corchuelo
#Date: 12/06/2015
#Project: DEVOPS Direct Access Planing and Configuration.


# The first Step is Identify Network Adapters connected in the server,  IP Address and Status

function Get-NetworkAdapters 
{
    $NetworkAdapters = Get-NetAdapter
  

    foreach ($NetworkAdapter in $NetworkAdapters)

    {
              return $NetworkAdapters.Status
    
    }
        
        Write-Host $NetworkAdapters C:\Users\Tulpep\Documents\GitHub\DA-Scripts

}





# Getting IP Address and validate if is public or private

function CountNetworkAdapters
{
   
   $TotalCount = Get-NetAdapter | Where-Object {$_.Status -eq  "Up" }
  

   return  $TotalCount
  

}

CountNetworkAdapters






















