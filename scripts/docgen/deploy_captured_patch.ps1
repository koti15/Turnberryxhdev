$ErrorActionPreference = 'Stop'
$sourceDirectory = 'datapacks/docgen-captured-patch'
$results = @()
foreach ($file in (Get-Content "$sourceDirectory/deployment-chunks.json" -Raw | ConvertFrom-Json)) {
    $response = sf apex run --target-org myProdOrg --file "$sourceDirectory/$file" --json
    $result = $response | ConvertFrom-Json
    $summary = [ordered]@{file=$file;success=$result.result.success;compiled=$result.result.compiled;error=$result.message;exception=$result.result.exceptionMessage}
    $results += $summary
    $results | ConvertTo-Json -Depth 8 | Set-Content Docgen/deployment/captured-deployment-result.json -Encoding UTF8
    if ($result.status -ne 0 -or $result.result.success -ne $true) { throw ('Patch batch failed: ' + $file + ' ' + $result.message + ' ' + $result.result.exceptionMessage) }
    Write-Output ($file + ': applied')
}
