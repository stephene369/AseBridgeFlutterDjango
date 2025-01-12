@echo off

:: Récupérer la date et l'heure locale via PowerShell
for /f "tokens=*" %%A in ('powershell -command "Get-Date -Format yyyyMMddHHmmss"') do set datetime=%%A

:: Construire le message de commit
set commit_message=Commit on %datetime%

:: Ajouter les changements, commiter et pousser
git add .
git commit -m "%commit_message%"
git push

:: Optionnel : stocker les informations d'identification (non recommandé en public)
:: git config --global credential.helper store

:: Pause pour vérifier les messages d'erreur éventuels

