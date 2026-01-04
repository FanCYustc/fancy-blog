# Configuration
$SourceRoot = "E:\OB\Fancy's vault"
$DestRoot = "$PSScriptRoot\content"
$FoldersToSync = @("4_Scientech", "5_Wiki")

Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "   Syncing Specific Folders to Quartz     " -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "Source Root: $SourceRoot"
Write-Host "Dest Root:   $DestRoot"
Write-Host "Folders:     $($FoldersToSync -join ', ')"
Write-Host ""

# Check if Source Root exists
if (-not (Test-Path -Path $SourceRoot)) {
    Write-Error "Error: Source directory '$SourceRoot' does not exist."
    exit 1
}

foreach ($folder in $FoldersToSync) {
    $currentSource = Join-Path $SourceRoot $folder
    $currentDest = Join-Path $DestRoot $folder
    
    Write-Host "Syncing '$folder'..." -ForegroundColor Yellow

    # Check if specific source folder exists
    if (-not (Test-Path -Path $currentSource)) {
        Write-Warning "Source folder '$currentSource' not found. Skipping."
        continue
    }

    # Use Robocopy to mirror the specific directory
    # /MIR :: Mirror a directory tree (equivalent to /E plus /PURGE).
    # /XD  :: Exclude directories matching the given names/paths.
    # /FFT :: Assume FAT file times (2-second granularity).
    # /R:0 :: Retry 0 times.
    # /W:0 :: Wait 0 seconds.
    $robocopyParams = @(
        $currentSource,
        $currentDest,
        "/MIR",
        "/XD", ".obsidian", ".git", ".trash",
        "/FFT",
        "/R:0",
        "/W:0"
    )

    # Run Robocopy
    & robocopy $robocopyParams | Out-Null # Suppress verbose output for cleaner logs

    # Robocopy exit code masking (anything < 8 is essentially a success)
    if ($LASTEXITCODE -ge 8) {
        Write-Error "Robocopy failed for '$folder' with exit code $LASTEXITCODE"
        exit $LASTEXITCODE
    } else {
        $global:LASTEXITCODE = 0
    }
    Write-Host "Finished syncing '$folder'." -ForegroundColor Green
    Write-Host ""
}

Write-Host "All content sync operations complete!" -ForegroundColor Green
Write-Host "Starting Quartz Sync..." -ForegroundColor Cyan
Write-Host ""

# Run quartz sync
cmd /c "npx quartz sync"
