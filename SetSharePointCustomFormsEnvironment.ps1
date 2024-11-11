#Install correct module
Install-Module Microsoft.PowerApps.Administration.PowerShell

#See the current SharePoint Form environment
Get-AdminPowerAppSharepointFormEnvironment

#change the environment
Set-AdminPowerAppSharepointFormEnvironment -EnvironmentName XXXXXX
