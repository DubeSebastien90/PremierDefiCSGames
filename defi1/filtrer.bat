@echo off
set "File=C:\Users\sebas\Documents\Github\ecole\PremierDefiCSGames\defi1\customer_profiles.csv"
set /a count=0
SETLOCAL enabledelayedexpansion
for /F "tokens=* delims=" %%a in ('Type "%File%"') do (
         Set /a count+=1
         Set "output[!count!]=%%a"     
)

For /L %%i in (1,1,%Count%) Do (
    echo "!output[%%i]!"
    FOR /F "tokens=1-6 delims=," %%A IN ("!output[%%i]!") DO (
    echo customer_id: %%A
    echo name: %%B
    echo email: %%C
    echo age: %%D
    echo city: %%E
    echo subscription_type: %%F
)
)

Exit
::*******************************************************
:Action
echo We treat this line : %1
exit /b
::*******************************************************