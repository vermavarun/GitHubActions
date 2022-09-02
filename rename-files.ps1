$files = Get-ChildItem . *.* -rec -exclude *.ps1
foreach ($file in $files)
{
    (Get-Content $file.PSPath) |
    Foreach-Object { $_ -replace "WillBeReplaced", "GotReplaced" } |
    Set-Content $file.PSPath
}
