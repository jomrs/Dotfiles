Write-Output "⚡ Restoring Windows Config..."

Copy-Item -Path $PWD\nvim\init.vim -Destination ~\AppData\Local\nvim
Start-Sleep -Seconds 1

Write-Output "✅ Finished."

