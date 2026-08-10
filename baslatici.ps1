Set-Location -Path $PSScriptRoot

Write-Host @"

//    ______ _______   __
//    |  _  \  ___\ \ / /
//    | | | | |__  \ V / 
//    | | | |  __| /   \ 
//    | |/ /| |___/ /^\ \
//    |___/ \____/\/   \/

"@ -ForegroundColor Green

Write-Host "==== Tweak ve Optimizasyon Aracı v1.0 ====" -ForegroundColor White
Start-Sleep -Seconds 2

$exePath = Join-Path $PSScriptRoot "dist\Tweak_new.exe"
$pyPath = Join-Path $PSScriptRoot "Tweak_new.py"
$venvPython = Join-Path $PSScriptRoot ".venv\Scripts\pythonw.exe"

if (Test-Path $exePath) {
    Start-Process -FilePath $exePath -Verb RunAs
} elseif (Test-Path $venvPython) {
    Start-Process -FilePath $venvPython -ArgumentList "`"$pyPath`"" -Verb RunAs
} elseif (Test-Path $pyPath) {
    Start-Process -FilePath "pythonw.exe" -ArgumentList "`"$pyPath`"" -Verb RunAs
} else {
    Write-Host "Hata: Uygulama dosyası (Tweak_new.exe veya Tweak_new.py) bulunamadı!" -ForegroundColor Red
}