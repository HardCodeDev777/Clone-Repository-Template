@echo off

set /p github_username="Your GitHub username: "
set /p repo_name="Repository name: "
set repo_url=https://github.com/%github_username%/%repo_name%.git

echo Cloning repository: %repo_url%
git clone %repo_url%
echo Repository cloned successfully!

copy "LICENSE.txt" "%repo_name%\LICENSE.txt" > nul
echo LICENSE.txt copied!

cd %repo_name% > nul
md src > nul
echo Folder src created successfully!

pause
