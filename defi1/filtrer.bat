@echo off
set "File=C:\Users\sebas\Documents\Github\ecole\PremierDefiCSGames\defi1\customer_profiles.csv"
set /a count=0
SETLOCAL enabledelayedexpansion
for /F "tokens=* delims=" %%a in ('Type "%File%"') do (
         Set /a count+=1
         Set "output[!count!]=%%a"     
)

For /L %%i in (1,1,%Count%) Do (
    FOR /F "tokens=1-6 delims=," %%A IN ("!output[%%i]!") DO (
    if %%A LEQ 0 echo INCORRECT "!output[%%i]!"
    if %%B LEQ 0 echo INCORRECT "!output[%%i]!"
    if %%C LEQ 0 echo INCORRECT "!output[%%i]!"
    if %%D LEQ 0 echo INCORRECT "!output[%%i]!"
    if %%E LEQ 0 echo INCORRECT "!output[%%i]!"
    if %%F LEQ 0 echo INCORRECT "!output[%%i]!"
)
)

