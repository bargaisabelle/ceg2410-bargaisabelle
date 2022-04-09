Adding a new user in power shell:
New-ADUser -Name "Goose Harper" -SamAccountName gharper -UserPrincipalName "gharper@ad.barga.com" -AccountPassword $secpass -Path "CN=Users,DC=ad,DC=barga,DC=com" -Enabled:$true

A .csv file is automatically formatted in github:
```
FirstName,LastName,SamAccountName
Alan,GRANT,agrant
Ellie,SATTLER,esattler
Ian,MALCOLM,imalcolm
John,HAMMOND,jhammond
```

Create a .ps1 file that can add multiple users at once (bulk.add.ps1):
```
# Sample from Active Directory Management in a Month of Lunches
# Prompt for password for all accounts
$secpass = Read-Host "Enter Default Password for Accounts" -AsSecureString

#TODO: add filename prompt?

# Pipe names.csv file to foreach loop
Import-Csv names.csv |
foreach {
  $name = "$($_.FirstName) $($_.LastName)"

#the line ticks at the end allow you to write on a new line when the command is really long
 New-ADUser -GivenName $($_.FirstName) -Surname $($_.LastName) `
 -Name $name -SamAccountName $($_.SamAccountName) `
 -UserPrincipalName "$($_.SamAccountName)@ad.barga.com" `
 -AccountPassword $secpass -Path "cn=Users,dc=ad,dc=barga,dc=com" `
 -Enabled:false
 #false, so you can allow the user to change their password once they are in the system and ready
 # More New-ADUser options: https://docs.microsoft.com/en-us/powershell/module/activedirectory/new-aduser?view=windowsserver2022-ps
}
```
Command line to add the users from .csv file:
  - Run the script:
  - ```.\bulk.add.ps1``` (or .\Desktop\bull.add.ps1 - depending on where the command line is writing to, mine is saved in desktop)

To check if the users were created
  - you can simply search their name with this command:
  - ```Get-ADUser -Identity agrant```
