$secpass = Read-Host "Enter a password for all users" -AsSecureString

Import-Csv .\Windows\new.users.csv |
foreach {
    $name = "$($_.FirstName) $($_.LastName)"

    New-ADUser -GivenName $($_.FirstName) -Surname $($_.LastName) `
    -Name $name -SamAccountName $($_.SamAccountName) `
    -UserPrincipalName "$($_.SamAccountName)@ad.barga.com" `
    -AccountPassword $secpass -Path "cn=Users,dc=ad,dc=barga,dc=com" `
    -Enabled:$false
}
