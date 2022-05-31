git pull overleaf master


$Folders = @("Differentialgeometrie", "Kanonische_Systeme", "Projektive_Geometrie", "Stochastische_Prozesse")
$Repos = $Folders | ForEach-Object {"Sem8-$_"}

$Repos | Write-Host

$Folders | ForEach-Object {
  Copy-Item -Path "$_\*" -Destination "..\Sem8-$_\sum" -Recurse
}
