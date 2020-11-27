$Path = "path to your folder to clean";
$foldersToClean = @("packages/", "bin/", "obj/", "node_modules");
$itemFolders = Get-ChildItem $Path -recurse | Where-Object {$foldersToClean -match $_.name} | ?{ $_.PSIsContainer } | Remove-Item -Force -Recurse