$data = ( Get-Content .\config.json|ConvertFrom-Json);

$filepath = Join-Path $data.mongoroot mongod.exe
$dbpath=$data.dbstorage

& $filepath --dbpath=$dbpath;
