@echo off

set /p prefix="Input prefix: "

for /r %%a in (*.png) do (
    echo "%%~a" -> "%prefix%_%%~nxa"
    rename "%%~a" "%prefix%_%%~nxa"
)

echo Done.
