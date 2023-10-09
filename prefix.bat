@echo off

set /p prefix="Input prefix: "

for /r %%a in (*.png) do (
    rename %%a "%prefix%_%%~nxa"
)

echo Done.
