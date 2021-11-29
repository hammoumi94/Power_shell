$fold = Read-Host -Prompt 'Input the folder name'
$file = Read-Host -Prompt 'Input the file name'
New-item -Name $fold -ItemType Directory -Path C:\Users\Dell\Desktop\Cours_Logwire\ 
New-item -Name $file -ItemType File -Path C:\Users\Dell\Desktop\Cours_Logwire\ 
Write-Host 'the folder' $fold 'was created'
Write-Host 'the file' $file 'was created'
Get-ChildItem -Path C:\Users\Dell\Desktop\Cours_Logwire\ 
