@echo off

set folderName=BluedySymphony

powershell -command "Start-BitsTransfer -Source https://github.com/BS-Sunaria/BluedySymphony/archive/refs/heads/main.zip -Destination folder.zip"
powershell -command "Expand-Archive folder.zip -DestinationPath (Get-Location) -Force"
powershell -command "if (Test-Path -Path '%folderName%' -PathType Container) { Remove-Item -Path '%folderName%' -Force -Recurse }"
powershell -command "Rename-Item -Path 'BluedySymphony-main' -NewName '%folderName%' -Force"
powershell -command "Remove-Item -Path folder.zip -Force"

echo Operations completed, if you encountered an error, contact the operator with the error message.

pause
