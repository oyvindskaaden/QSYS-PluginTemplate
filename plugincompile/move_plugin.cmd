
:: %1 Source folder
:: %2 Destination folder
:: %3 File to move

ROBOCOPY %1 %2 %3 /MOV
rem // This handles the exit code (`ErrorLevel`) returned by `robocopy` properly:
if ErrorLevel 8 (exit /B 1) else (exit /B 0)