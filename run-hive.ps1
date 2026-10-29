
$ErrorActionPreference = "Stop"

Get-Content "$PSScriptRoot\init.sql" -Raw |
    docker exec -i hive beeline -u "jdbc:hive2://localhost:10000/" -f /dev/stdin

if ($LASTEXITCODE -ne 0) {
    throw "Hive script execution failed"
}
