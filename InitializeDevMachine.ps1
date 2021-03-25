try
{
    # download winget
    # #Requires -RunAsAdministrator
    # #Download Winget
    # $LatestWingetRelease = Invoke-RestMethod -Uri https://api.github.com/repos/microsoft/winget-cli/releases/latest
    # $Assets = Invoke-RestMethod -Uri $LatestWingetRelease.assets_url
    # $AssetDownloadURI = ($Assets | Where-Object {$_.content_type -like "application*"}).browser_download_url
    # $FileName = ($AssetDownloadURI -split '/')[-1]
    # $UserDownloadFolder = $env:USERPROFILE + "\Downloads\" + $FileName
    # Invoke-WebRequest -Uri $AssetDownloadURI -OutFile $UserDownloadFolder
    # Add-AppxProvisionedPackage -PackagePath $UserDownloadFolder -SkipLicense -Online
    # $manifest = (Get-AppxPackage Microsoft.VCLibs.140.00.UWPDesktop | Where-Object {$_.Architecture -eq 'X64'} | Sort-object $_.Version -Descending)[0].InstallLocation + '\AppxManifect.xml'
    # Add-AppPackage -Path $UserDownloadFolder -DependencyPath $manifest




  
    winget install Microsoft.dotnet
    winget install Microsoft.Powertoys
    winget install Microsoft.PowerShell
    winget install Microsoft.WindowsTerminal 
    winget install git
    winget install 'Visual Studio Professional'
    winget install 'Visual Studio Enterprise'
    winget install 'SQL Server Management Studio'
    winget install Postman.Postman
    winget install Microsoft.VisualStudioCode
    winget install Microsoft.Teams
}
catch
{
    $_
}