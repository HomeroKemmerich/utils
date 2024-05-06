@echo off
REM Obter a data atual
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set datetime=%%I

REM Extrair ano, mês e dia do datetime
set year=%datetime:~0,4%
set month=%datetime:~4,2%
set day=%datetime:~6,2%

REM Criar o diretório do novo arquivo
mkdir .\Classes\%year%%month%%day%_review
cd .\Classes\%year%%month%%day%_review

REM Criar o arquivo README.md
echo # %1 > README.md


