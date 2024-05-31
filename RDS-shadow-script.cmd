@echo off
set /p input="Ip address: "
    echo Введено "%input%"
qwinsta /server:%input%
set /p id="Session ID: "
Mstsc.exe /shadow:%id% /control /noConsentPrompt /v:%input%
pause  
