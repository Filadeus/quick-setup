Invoke-WebRequest -Uri "https://ninite.com/7zip-chrome-firefox-gimp-libreoffice-vlc-zoom/ninite.exe" -OutFile "$env:temp\ninite.exe"
Invoke-Expression -Command "$env:temp\ninite.exe /silent"

#Get-WmiObject is no longer supported, and from version 4.0 marked as deprecated
#$Bloat = Get-WmiObject -Class Win32_Product | Where-Object{$_.Name -eq "Windows SDK"}

#Installed software can be querried trough Uninstall Registry Key
#$UninstallKeyPath = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall'

#$BloatSoftware = Get-ChildItem -Path $UninstallKeyPath | ForEach-Object -Process {$_.GetValue('DisplayName')} | Where-Object{$_.DisplayName -eq "VLC media player"}