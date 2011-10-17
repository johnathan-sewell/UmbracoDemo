# A Powershell script for creating a new solution structure, it mimics the structure of 
# the SharpArchitecture example solution at https://github.com/sharparchitecture/Northwind

Clear-Host

#The Split-Path cmdlet returns only the specified part of a path
$projectFolder = Split-Path -parent $MyInvocation.MyCommand.Definition

new-item -path $projectFolder -name app -itemtype "directory"

$coreFolder = $projectFolder + "\app"
$projectName = Split-Path -leaf $projectFolder
$coreDirectory =  $projectName + ".Core"
new-item -path $coreFolder -name $coreDirectory -itemtype "directory"
$dataDirectory =  $projectName + ".Data"
new-item -path $coreFolder -name $dataDirectory -itemtype "directory"
$webDirectory =  $projectName + ".Web"
new-item -path $coreFolder -name $webDirectory -itemtype "directory"
$servicesDirectory =  $projectName + ".ApplicationServices"
new-item -path $coreFolder -name $servicesDirectory -itemtype "directory"

new-item -path $projectFolder -name db -itemtype "directory"
new-item -path $projectFolder -name lib -itemtype "directory"
new-item -path $projectFolder -name test -itemtype "directory"
new-item -path $projectFolder -name logs -itemtype "directory"
new-item -path $projectFolder -name tools -itemtype "directory"