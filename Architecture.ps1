# Define the root directory as a parameter
param (
    [string]$RootDirectory
)

# Check if dumpbin is available
$DumpbinPath = "C:\Program Files\Microsoft Visual Studio\2022\Preview\VC\Tools\MSVC\14.44.34918\bin\Hostx86\x64\dumpbin.exe" # Update as needed
if (!(Test-Path $DumpbinPath)) {
    Write-Host "dumpbin.exe not found. Ensure you have Visual Studio installed with the necessary tools."
    exit
}

# Get all .exe and .dll files recursively
$Files = Get-ChildItem -Path $RootDirectory -Recurse -File -Include *.exe, *.dll

foreach ($File in $Files) {
    
    # Get file version info using [System.Diagnostics.FileVersionInfo]
    $VersionInfo = (Get-Item $File.FullName).VersionInfo
    $FileVersion = $VersionInfo.FileVersionRaw
    $ProductVersion = $VersionInfo.FileVersion
    
    # Run dumpbin and filter for 'machine'
    $Output = & $DumpbinPath /headers $File.FullName | Select-String -Pattern "machine" -CaseSensitive:$false
    
    if ($Output) {
        Write-Host "Result for $($File.FullName):"
        Write-Host $Output
    } else {
        Write-Host "No machine information found for $($File.FullName)"
    }
	
    Write-Host "File Version: $FileVersion"
    Write-Host "Product Version: $ProductVersion"
}
