##Log into the module
Connect-MSCommerce

##Get all services that allow self service
Get-MSCommerceProductPolicies -PolicyId AllowSelfServicePurchase 

##Update status to disabled by product ID
Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId CFQ7TTC0H9MP -Value "Disabled"

##Update status to disabled by name
$product = Get-MSCommerceProductPolicies -PolicyId AllowSelfServicePurchase | where {$_.ProductName -match 'Power BI Pro‘}
Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId $product.ProductID -Enabled $false

##Update status to disabled for all at once
$Products = Get-MSCommerceProductPolicies -PolicyId AllowSelfServicePurchase
foreach ($Product in $Products){
    Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId $Product.ProductID -Enabled $false
}

##Unchecked cmdlet for disabling all at once
Get-MSCommerceProductPolicies -PolicyId AllowSelfServicePurchase | ForEach {Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId $_.ProductId -Enabled $False}

