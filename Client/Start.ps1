if (-not (Test-Path .\Minecraft.exe)) {
    Invoke-WebRequest -UseBasicParsing -Uri https://launcher.mojang.com/download/Minecraft.exe -OutFile .\Minecraft.exe
}
if (Test-Path .\.minecraft\launcher_profiles.json) {
    Write-Host "Enter the Minecraft display name you want"
    $displayName = Read-Host -Prompt "Display Name"
    $profiles = Get-Content -Path .\.minecraft\launcher_profiles.json -Raw
    $profilesJson = ConvertFrom-Json $profiles
    $account = $profilesJson.selectedUser.account
    $profile = $profilesJson.selectedUser.profile
    $profilesJson.authenticationDatabase.$account.profiles.$profile.displayName = $displayName
    $profiles = ConvertTo-Json $profilesJson -Depth 10
    Set-Content -Path .\.minecraft\launcher_profiles.json -Value $profiles
}
