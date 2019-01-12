. $PSScriptRoot\Common.ps1
$imageName
docker build -t "$($imageName):latest" -t "$($imageName):1.0" .
docker image list $imageName
