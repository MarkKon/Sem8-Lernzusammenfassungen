git pull overleaf master


$Folders = @("Differentialgeometrie", "Kanonische_Systeme", "Projektive_Geometrie", "Stochastische_Prozesse")
$Repos = $Folders | ForEach-Object {"Sem8-$_"}

$Repos | Write-Host

$Folders | ForEach-Object {
  Copy-Item -Path "$_\*" -Destination "..\Sem8-$_\sum" -Recurse
}

$Folders | ForEach-Object {
  Set-Location "..\Sem8-$_"
  git pull
  git pull overleaf master
  git add "sum/zus.tex"
  git commit -m "Moved from Repo Sem8-Lernzusammenfassungen"
  ./util/push_both.ps1
}
cd "..\Sem8-Lernzusammenfassungen"