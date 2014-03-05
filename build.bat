@echo off
if "%1"=="debug" (
    set debug=--css "override.css"
) else (
    set debug=
)
echo Generating... 
for /r %%i in (*.md) do pandoc -s "%%i" -o "%%~di%%~pi%%~ni.html" %debug% --css "style.css" --smart --no-highlight
echo Generated 

