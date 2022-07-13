# Challage-DevOps-alura
Alterado o settings.py para possibilitar a configuração da string de conexão com o banco de dados "Postgres" durante a criação da imagem

```
var_email=
var_user= 
var_pass=
var_debug=
var_db_NAME= 
var_db_USER= 
var_db_PASSWORD= 
var_db_HOST= 
var_db_PORT= 
```
#Exemplo:
```Docker
docker build --build-arg var_email=admin@admin.com --build-arg var_user=admin --build-arg var_pass=admin --build-arg var_debug=1 --build-arg var_db_NAME=postgres --build-arg var_db_USER=postgres --build-arg var_db_PASSWORD=PASSWORD --build-arg var_db_HOST=db --build-arg var_db_PORT=5432 -t app:6.0 .
```
