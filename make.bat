goto start
--------------------------------------
Этот пакетный файл предназначен
для автоматизации создания структуры
папок / файлов кредитного досье,
а также для создания другого пакетного файла
для автоматизации архивирования досье,
для последующей заливки в приложение Focus
--------------------------------------
Пакетный файл написан 01/16/2022
Последнее исправление внесено 01/16/2022
--------------------------------------
Необходимо прописать логирование выполнения файла
:start

@echo off
:: создание структыры папок
MD ClientName_Suma_Valuta
MD ClientName_Suma_Valuta\"1. Solicitare Aprobare"
MD ClientName_Suma_Valuta\"1. Solicitare Aprobare"\Cadastru
MD ClientName_Suma_Valuta\"1. Solicitare Aprobare"\BIC
MD ClientName_Suma_Valuta\"1. Solicitare Aprobare"\"Verificari in liste"
MD ClientName_Suma_Valuta\"2. Documente Juridice"
MD ClientName_Suma_Valuta\"3. Analiza Financiara"
MD ClientName_Suma_Valuta\"4. Sursa Primara"
MD ClientName_Suma_Valuta\"5. Sursa Secundara"
MD ClientName_Suma_Valuta\"5. Sursa Secundara"\"Rapoarte de evaluare"
MD ClientName_Suma_Valuta\"6. Scop Credit"
MD ClientName_Suma_Valuta\"7. Fotografii"
MD ClientName_Suma_Valuta\"8. Eliberare, Monitoring"
MD ClientName_Suma_Valuta\"8. Eliberare, Monitoring"\"Contracte semnate"
MD ClientName_Suma_Valuta\"8. Eliberare, Monitoring"\"Contracte semnate"\"Inregistrare gaj"
MD ClientName_Suma_Valuta\"8. Eliberare, Monitoring"\"Tragere credit"
MD ClientName_Suma_Valuta\"8. Eliberare, Monitoring"\Monitoring
MD ClientName_Suma_Valuta\"__ Other __"
:: Создание LOG файла
copy nul > ClientName_Suma_Valuta\"__ Other __"\log.txt

echo Structura dosarului creata !!!

:: Создание Bat файла с командами для архивации
@echo off
(
echo.MD Arhiva
echo.start WinRAR -r a  Arhiva\"1. Solicitare Aprobare.rar" "1. Solicitare Aprobare"
echo.start WinRAR -r a  Arhiva\"2. Documente Juridice.rar" "2. Documente Juridice"
echo.start WinRAR -r a  Arhiva\"3. Analiza Financiara.rar" "3. Analiza Financiara"
echo.start WinRAR -r a  Arhiva\"4. Sursa Primara.rar" "4. Sursa Primara"
echo.start WinRAR -r a  Arhiva\"5. Sursa Secundara.rar" "5. Sursa Secundara"
echo.start WinRAR -r a  Arhiva\"6. Scop Credit.rar" "6. Scop Credit"
echo.start WinRAR -r a  Arhiva\"7. Fotografii.rar" "7. Fotografii"
echo.start WinRAR -r a  Arhiva\"8. Eliberare, Monitoring.rar" "8. Eliberare, Monitoring"
echo.echo Arhivarea efectuata cu succes
echo.pause
) >  ClientName_Suma_Valuta\arhivare.bat

echo Fisier pentru arhivere a fost create cu succes !!!
pause