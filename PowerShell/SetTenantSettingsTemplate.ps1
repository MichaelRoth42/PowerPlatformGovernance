#Login to your tenant
Add-PowerAppsAccount

#Get a list of all current tenant settings
Get-TenantSettings

#Build your own request body
$requestBody = @{
    disableSurveyFeedback = $true
    }

#Set new tenant settings, which are defined in the body
Set-TenantSettings -RequestBody $requestBody
