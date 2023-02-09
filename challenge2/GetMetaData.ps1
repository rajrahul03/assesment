<#
.SYNOPSIS
    PowerShell script that retrieves the metadata of an Azure VM instance and outputs it in JSON format
.DESCRIPTION
    PowerShell script that retrieves the metadata of an Azure VM instance and outputs it in JSON format
.NOTES
    Author: RAHUL.RAJ.V.V
    Last Edit: 08th Feb 2023

#>
Function Get-MetaData
{

$metadata = Invoke-WebRequest -Uri "http://169.254.169.254/metadata/instance?api-version=2019-06-01" -Method GET -Headers @{Metadata="true"}
$json = $metadata.Content | ConvertFrom-Json
return ($json)
}

