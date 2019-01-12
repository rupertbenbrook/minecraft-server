. $PSScriptRoot\Common.ps1
docker rm $containerName -f
md $PSScriptRoot\data -ErrorAction SilentlyContinue
docker run -d -p 25565:25565 -e EULA=true --cpus=2 -m 2g -v "$PSScriptRoot/data:/data" --name $containerName $imageName
docker logs -f $containerName
