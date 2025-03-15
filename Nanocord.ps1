if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process powershell -ArgumentList "-File `"$($MyInvocation.MyCommand.Path)`"" -Verb RunAs
    exit
}

$browserChoice = Read-Host "
1. Google Chrome
2. Brave
3. Microsoft Edge
4. Opera
5. Vivaldi
6. Chromium

Select your browser"

$githubRepoUrl = "https://github.com/ltx0101/NanoCord/raw/main/Nanocord/"

switch ($browserChoice) {
    "1" {
        $browserName = "chrome"
        $browserUrl = "${githubRepoUrl}chrome.bat"
    }
    "2" {
        $browserName = "brave"
        $browserUrl = "${githubRepoUrl}brave.bat"
    }
    "3" {
        $browserName = "msedge"
        $browserUrl = "${githubRepoUrl}msedge.bat"
    }
    "4" {
        $browserName = "opera"
        $browserUrl = "${githubRepoUrl}opera.bat"
    }
    "5" {
        $browserName = "vivaldi"
        $browserUrl = "${githubRepoUrl}vivaldi.bat"
    }
    "6" {
        $browserName = "chromium"
        $browserUrl = "${githubRepoUrl}chromium.bat"
    }
    default {
        Write-Host "Invalid choice. Please select a valid option (1-6)."
        exit
    }
}

Write-Host "You selected $browserName."

$folderPath = "$env:USERPROFILE\Documents\Nanocord"
$batFilePath = "$folderPath\$browserName.bat"
$iconPath = "$PSScriptRoot\logo.ico"  
$iconDestination = "$folderPath\logo.ico"  

if (-not (Test-Path $folderPath)) {
    New-Item -Path $folderPath -ItemType Directory
}

Write-Host "Downloading $browserName .bat file from GitHub..."
Invoke-WebRequest -Uri $browserUrl -OutFile $batFilePath

if (Test-Path $batFilePath) {
    Write-Host "$browserName .bat file downloaded successfully to $batFilePath."
} else {
    Write-Host "Failed to download the .bat file."
    exit
}

if (Test-Path $iconPath) {
    Copy-Item -Path $iconPath -Destination $iconDestination
    Write-Host "Icon file copied to $iconDestination."
} else {
    Write-Host "Icon file 'logo.ico' not found. Using default icon."
    $iconDestination = "shell32.dll, 2"
}

$desktopShortcutPath = "$env:USERPROFILE\Desktop\NanoCord.lnk"

$shell = New-Object -ComObject WScript.Shell
$shortcut = $shell.CreateShortcut($desktopShortcutPath)
$shortcut.TargetPath = $batFilePath
$shortcut.IconLocation = $iconDestination
$shortcut.Save()

Write-Host "Shortcut named 'NanoCord' created on Desktop with custom icon."