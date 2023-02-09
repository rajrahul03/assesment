<#
.SYNOPSIS
    This script reads Json file and get the value from Nested object.
.DESCRIPTION
   This script reads Json file and get the value from Nested object.
   Input: Filepath,object,Key
   Output: Value
.NOTES
    Author: RAHUL.RAJ.V.V
    Last Edit: 08th Feb 2023

#>
########INPUT#################
$filePath = #FILE_PATH
$object = # name of object
$key= # name of key

#########Example#############
# $filePath ="user.json"
# $object = "drew"
# $key= "location"

################FUNCTION DEFINE####################
Function Get-JsonValue
{
  param (
    [Parameter(Mandatory=$true)]
    [string]$FilePath,

    [Parameter(Mandatory=$true)]
    [string]$object,

    [Parameter(Mandatory=$true)]
    [string]$key


  )

  $json = Get-Content -Path $FilePath | ConvertFrom-Json
  $keyvaluepair = $json | Select-Object -ExpandProperty $object
  $value = $keyvaluepair.$key
  return ($value)
}

#############FUNCTION CALL############

Get-JsonValue -FilePath $filePath -object $object -key $key

############## END OF PROGRAM ###############