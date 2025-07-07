$version = $args[0]

$compress = @{
    Path            = ".\assets", ".\pack.mcmeta"
    DestinationPath = ".\release.zip"
}
Compress-Archive @compress -Update
$fileHash = Get-FileHash ".\release.zip" -Algorithm SHA1
Move-Item -Path ".\release.zip" -Destination ".\releases\v$version-$($fileHash.Hash)"
