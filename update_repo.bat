cd ../
@echo
@echo.
@echo ********************************************
@echo             ATUALIZANDO REPOSITORIOS
@echo ********************************************
@echo .
@echo BAIXAINDO ULTIMA VERSAO app-cliente-viasul
git clone https://github.com/CAPYS-IT/app-cliente-viasul.git 
cd app-cliente-viasul
@echo ATUALIZANDO app-cliente-viasul COM app-cliente-template
git add * 
git commit -m "Atualizando projeto com template - via script"
git push
git clone https://github.com/CAPYS-IT/app-cliente-template.git tmp
robocopy .\tmp .\ * /e  
rd /S .\tmp
git commit -m "Atualizando projeto com template - via script"
git push
@echo app-cliente-viasul ATUALIZADO
cd ../
cd app-cliente-teste
@echo ATUALIZANDO app-cliente-teste COM app-cliente-template
git add * 
git commit -m "Atualizando projeto - via script"
git push
git clone https://github.com/CAPYS-IT/app-cliente-template.git tmp
robocopy .\tmp .\ * /e  
rd /S .\tmp
git remote rm origin
git remote add origin https://github.com/CAPYS-IT/app-cliente-teste
git commit -m "Atualizando projeto com template - via script"
git pull origin master
git push --set-upstream origin master
@echo app-cliente-teste ATUALIZADO
pause