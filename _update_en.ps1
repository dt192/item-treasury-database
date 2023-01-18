Write-Host "ItemTreasury Database EN updater"
$PathRun = $PSCommandPath | Split-Path -Parent

Write-Host "Current location [$PathRun]"
Set-Location -Path $PathRun

Write-Host "Check files"
function CheckAndPatch {
    param($file, $pattern, $replace, $patch)

    $LuaPatch = select-string -Path $file -Pattern $pattern
    if ($LuaPatch) {
        Write-Host "$file already patched"
    }
    else {
        (Get-Content -Path $file) -replace $replace, $patch | Set-Content -Path $file
        Write-Host "$file patched"
    }
}

function download {
    param($from, $to)
    Write-Host "Start update $to"
    Invoke-WebRequest -URI $from -OutFile $to
}

CheckAndPatch `
    -file ".\Main.lua" `
    -pattern 'import \(PLUGINDIR\.\."\.Items"\);' `
    -replace 'import \(PLUGINDIR\.\."\.(.+)_Items"\);' `
    -patch "import (PLUGINDIR..`".Items`");"

CheckAndPatch `
    -file ".\Main.lua" `
    -pattern 'import \(PLUGINDIR\.\."\.NewItems"\);' `
    -replace 'import \(PLUGINDIR\.\."\.(.+)_NewItems"\);' `
    -patch "import (PLUGINDIR..`".NewItems`");"

download `
    -from "https://github.com/dt192/item-treasury-database/raw/patch/Items.lua" `
    -to ".\Items.lua"

download `
    -from "https://github.com/dt192/item-treasury-database/raw/patch/NewItems.lua" `
    -to ".\NewItems.lua"
