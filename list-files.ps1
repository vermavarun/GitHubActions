$files = Get-ChildItem . *.* -rec -exclude rename-files.ps1
foreach ($file in $files) {
        Write-Host $file.FullName    
}


