$User = Read-Host -Prompt 'Input the user name'
New-LocalUser -Name $User -Description "user for TP" -FullName "youssef elhammoumi" -NoPassword
Start-Sleep 1
Write-Host 'the user' $User 'was created \n'
$rmv = Read-Host -Prompt 'Do you want to remove it ? [y/n]'
if ($rmv -eq 'y'){
    Remove-LocalUser -Name $User
    Write-Host "the user" $User "was removed"
}
if ($rmv -ne 'y'){
    Write-Host 'the user' $User 'is still exist.'
}