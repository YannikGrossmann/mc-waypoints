$fileHash = Get-FileHash ".\release.zip" -Algorithm SHA1
Write-Output $fileHash.Hash
