$limit = (Get-Date).AddDays(-180)
$path = "\\mediadisk\photo\user\Samuel.L.Jackson\PulpFiction\RarePhotos"
#delete by _.CreationTime uncomment if needed
#Get-ChildItem -Path $path -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item -Force
#delete by _.LastWriteTime
Get-ChildItem -Path $path -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.LastWriteTime -lt $limit } | Remove-Item -Force
