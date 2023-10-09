@echo off

for /f "tokens=1,2" %%a in (map.txt) do (
    if not exist "%%~dpb" mkdir "%%~dpb"
    curl -k -o "%%b" -H "Referer:https://www.pixiv.net/" "%%a"
)

echo Done.
