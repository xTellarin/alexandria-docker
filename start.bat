@echo off
REM Pull latest changes from GitHub
git pull

REM Try to run docker-compose up in detached mode and capture its output
FOR /F "tokens=* USEBACKQ" %%F IN (`docker-compose up -d 2^>^&1`) DO (
SET docker_output=%%F
)

REM If docker-compose up produced an output, check if it contains error message
echo %docker_output% | findstr /C:"ERROR" 1>nul
IF errorlevel 1 (
  echo App started successfully
  echo You can access the app at http://tianyi.tellarin.dev 
  echo Use 'docker-compose down' to stop the app.
) else (
    echo Warning: There might be an issue with Docker. Please ensure Docker is installed and running! Here is the error message:
    echo %docker_output%
)
