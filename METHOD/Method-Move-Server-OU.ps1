
Write-Host "Enter Server Name:" -ForegroundColor Yellow
$moveme = Read-Host

write-host ""
write-host "Current location..." -ForegroundColor Yellow
(Get-ADComputer $moveme).distinguishedname

write-host ""
write-host "Moving server to new location.." -ForegroundColor Yellow
Start-Sleep 3
Get-ADComputer $moveme | Move-ADObject -TargetPath 'OU=CCTV Servers,OU=Servers,DC=safeway01,DC=ad,DC=safeway,DC=com'

Write-Host ""
Write-Host "New location..." -ForegroundColor Yellow
(Get-ADComputer $moveme).distinguishedname