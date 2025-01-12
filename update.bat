@echo off
for /f "tokens=2 delims==" %%A in ('"wmic os get localdatetime /value"') do set datetime=%%A

set year=%datetime:~0,4%
set month=%datetime:~4,2%
set day=%datetime:~6,2%
set hour=%datetime:~8,2%
set minute=%datetime:~10,2%
set second=%datetime:~12,2%

set commit_message=%year%-%month%-%day% %hour%:%minute%:%second%

git add .
git commit -m "%commit_message%"
git push

# git config --global credential.helper store
# pause
