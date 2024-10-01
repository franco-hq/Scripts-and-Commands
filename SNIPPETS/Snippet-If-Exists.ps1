<#
    .NOTES
        Author: Roboute Guilliman
        Created: 09/2024

    .SYNOPSIS
        2-scenario example that uses a variable to see if something is "$true" or not

    .DESCRIPTION
        -Powershell uses the "!" as a logical "not" operator
        -If used next to a variable, it would mean not $TRUE or existent
#>


# IF EXISTS
$procesname = Get-Process xmofts -ErrorAction SilentlyContinue

if ($processname) {write-host "Process Exists"}
else {Write-Host "Process doesn't exist"}



# DOES NOT EXIST
$processname = Get-Process xmofts -ErrorAction SilentlyContinue

if (!$processname) {Write-Host "Does not exist"}
else {Write-Host "Process Exists"}

