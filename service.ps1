$ServiceName = 'AdobeARMservice'
$statService = Get-Service -Name $ServiceName

if ($statService.Status -eq 'Running')
    {
        Write-Host 'Service is now Running'
        Get-Service -Name $ServiceName
    }

if ($statService.Status -ne 'Running')
{
    write-host 'Service is stopped. it will be running now!'
    Get-Service -Name $ServiceName
    Start-Sleep 4
    #Clear-Host
    Start-Service $ServiceName
    Start-Sleep 4
    write-host 'Service is now running'
    Get-Service -Name $ServiceName 
    
    
}

