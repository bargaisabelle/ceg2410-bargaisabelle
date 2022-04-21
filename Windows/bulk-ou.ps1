Import-Csv .\Desktop\ceg2410-bargaisabelle\Windows\org-user.csv |
foreach {
    New-ADOrganizationalUnit -Name $_.Name -Path $_.Path `
    -ProtectedFromAccidentalDeletion $true -PassThru
}