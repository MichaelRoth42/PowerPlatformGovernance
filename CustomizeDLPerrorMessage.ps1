New-PowerAppDlpErrorSettings -TenantId XXXXX -ErrorSettings @{  
  ErrorMessageDetails = @{ 
    enabled = $True  
    url = "TheURLofyourdreams" 
  } 
  ContactDetails= @{  
    enabled = $True 
    email = "An email address" 
  } 
}
