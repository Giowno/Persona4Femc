# Set Working Directory
Split-Path $MyInvocation.MyCommand.Path | Push-Location
[Environment]::CurrentDirectory = $PWD

Remove-Item "$env:RELOADEDIIMODS/Persona4Femc/*" -Force -Recurse
dotnet publish "./Persona4Femc.csproj" -c Release -o "$env:RELOADEDIIMODS/Persona4Femc" /p:OutputPath="./bin/Release" /p:ReloadedILLink="true"

# Restore Working Directory
Pop-Location