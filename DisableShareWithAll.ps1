Add-PowerAppsAccount
$settings=Get-TenantSettings $settings.powerPlatform.powerApps.disableShareWithEveryone=$false 
Set-TenantSettings $settings
