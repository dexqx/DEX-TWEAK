Clear-Host
Write-Host @"

//    ______ _______   __
//    |  _  |  ___| | / /
//    | | | | |__  | V / 
//    | | | |  __| /   | 
//    | |/ /| |___/ /^\ \
//    |___/ \____/\/   \/

"@ -ForegroundColor Green

Write-Host "==== DEX TWEAK ve Optimizasyon Aracı v1.0 ====" -ForegroundColor White
Start-Sleep -Seconds 2

# Dosyanın ineceği geçici klasör
$exeYolu = "$env:TEMP\Tweak_new.exe"

Write-Host "Sistem dosyaları hazırlanıyor, lütfen bekleyin..." -ForegroundColor Yellow

# EXE dosyanı indirir
Invoke-WebRequest -Uri "https://github.com/dexqx/DEX-TWEAK/releases/download/tweak/Tweak_new.exe" -OutFile $exeYolu

Write-Host "Başlatılıyor..." -ForegroundColor Green
Start-Sleep -Seconds 1

# İndirilen programı yönetici olarak çalıştırır
Start-Process -FilePath $exeYolu -Verb RunAs
