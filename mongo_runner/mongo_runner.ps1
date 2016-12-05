$data = ( Get-Content .\config.json|ConvertFrom-Json);

$filepath = Join-Path $data.mongoroot mongod.exe;
$dbpath=$data.dbstorage;

New-Item -ItemType Directory -Force -Path $dbpath;

& $filepath --dbpath=$dbpath;
