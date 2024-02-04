
$files = get-childitem -path . -file -recurse -include ('*.exe', '*.pdb', '*.ilk', '*.obj', '*.dll', '*.exp', '*.lib', '*.o')
"Here are the file that will be deleted."
($files).fullname
""
"Performing delete."
$files | Remove-Item

"Deleting bin and obj folders..."
Get-ChildItem .\ -include bin,obj -Recurse | ForEach-Object ($_) { Remove-Item $_.FullName -Force -Recurse }

