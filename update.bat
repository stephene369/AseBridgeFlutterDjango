@echo off

:: Récupérer la date et l'heure locale
for /f "tokens=2 delims==" %%A in ('"wmic os get localdatetime /value"') do set datetime=%%A

:: Extraire les parties de la date et de l'heure
set year=%datetime:~0,4%
set month=%datetime:~4,2%
set day=%datetime:~6,2%
set hour=%datetime:~8,2%
set minute=%datetime:~10,2%
set second=%datetime:~12,2%

:: Construire le message de commit
set commit_message=%year%-%month%-%day% %hour%:%minute%:%second%

:: Ajouter les changements, commiter et pousser
git add .
git commit -m "%commit_message%"
git push

:: Optionnel : stocker les informations d'identification (non recommandé en public)
:: git config --global credential.helper store

:: Pause pour vérifier les messages d'erreur éventuels
:: pause
