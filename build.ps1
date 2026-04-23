# OpenClaw Extension Build Script
$ErrorActionPreference = "Stop"

$base = "extension"
$src = "extension/src"
$icons = "extension/icons"
$distChrome = "dist/chrome"
$distFirefox = "dist/firefox"

Write-Host "--- Building Extensions ---" -ForegroundColor Cyan

# 1. Clean dist
Write-Host "Cleaning dist..."
if (Test-Path "dist") {
    Remove-Item "dist/*" -Recurse -Force -ErrorAction SilentlyContinue
} else {
    New-Item -ItemType Directory -Path "dist" -Force
}
New-Item -ItemType Directory -Path $distChrome -Force
New-Item -ItemType Directory -Path $distFirefox -Force

# 2. Chrome Build
Write-Host "Building Chrome..."
Copy-Item "$src/*" "$distChrome/" -Recurse
Copy-Item "$icons" "$distChrome/icons" -Recurse
Copy-Item "$base/manifest.chrome.json" "$distChrome/manifest.json" -Force
Compress-Archive -Path "$distChrome/*" -DestinationPath "dist/openclaw-chrome.zip" -Force

# 3. Firefox Build
Write-Host "Building Firefox..."
Copy-Item "$src/*" "$distFirefox/" -Recurse
Copy-Item "$icons" "$distFirefox/icons" -Recurse
Copy-Item "$base/manifest.firefox.json" "$distFirefox/manifest.json" -Force
Compress-Archive -Path "$distFirefox/*" -DestinationPath "dist/openclaw-firefox.zip" -Force
if (Test-Path "dist/openclaw-firefox.xpi") { Remove-Item "dist/openclaw-firefox.xpi" -Force }
Rename-Item "dist/openclaw-firefox.zip" "openclaw-firefox.xpi"


Write-Host "--- Done! ---" -ForegroundColor Green
Write-Host "Chrome Package:  dist/openclaw-chrome.zip"
Write-Host "Firefox Package: dist/openclaw-firefox.xpi"

