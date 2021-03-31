try
{
    # download winget
    # #Requires -RunAsAdministrator
    # #Download Winget
    Add-AppxPackage -Path "https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx"
		
    $releases_url = "https://api.github.com/repos/microsoft/winget-cli/releases/latest"

    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $releases = Invoke-RestMethod -uri "$($releases_url)"
    $latestRelease = $releases.assets | Where-Object { $_.browser_download_url.EndsWith("appxbundle") } | Select-Object -First 1

    Add-AppxPackage -Path $latestRelease.browser_download_url




  
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