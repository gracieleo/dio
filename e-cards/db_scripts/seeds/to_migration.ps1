#Pegar o diretório atual
$scriptDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent 

#Arquivo saída com todos sql
$outputFile = Join-Path -Path $scriptDir -ChildPath "migration.sql"

#Verifica se o arquivo já existe, se sim, remove
if (Test-Path $outputFile) {
    Remove-Item $outputFile
}

#Pega conteúdo de todos os arquivos .sql
$sqlFiles = Get-ChildItem -Path $scriptDir -Filter *.sql -File | Sort-Object Name

#Concatena o conteúdo de todos os arquivos .sql
foreach ($file in $sqlFiles) {
    #Lê o conteúdo do arquivo
    Get-Content $file.FullName | Out-File  -Append -FilePath $outputFile 
    "GO" | Out-File -Append -FilePath $outputFile
}

Write-Host "Arquivo de migração criado com sucesso em: $outputFile"