powershell -command "Start-BitsTransfer -Source https://github.com/BS-Sunaria/BluedySymphony/archive/refs/heads/main.zip -Destination folder.zip"
powershell -command "Expand-Archive folder.zip -DestinationPath (Get-Location) -Force"
powershell -command "Rename-Item -Path 'BluedySymphony-main' -NewName 'BluedySymphony'"
