@echo off

set /p prefix="Input prefix: "

for /r %%a in (*.png) do (
    echo rename "%%a" "%prefix%_%%~nxa.tmp"
    rename "%%a" "%prefix%_%%~nxa.tmp"
)
for /r %%a in (*.png.tmp) do (
    echo rename "%%a" "%%~na"
    rename "%%a" "%%~na"
)
echo Done.
