<p>Todo o ambiente e teste foram realizados com Windows;</p>
<p>Criado container a partir de ubuntu aprendizado do python;</p>
<p>Criado container com todos os requisitos para depois somente utilizar e atualizar os app;</p>

# Cria container com os requisitos
```powershell
cd .\Challage-DevOps-alura\Prepare-container\
docker build -t preparedocker:1.1 .
```
# Cria container da aplicação
```powershell
cd .\Challage-DevOps-alura\
docker build --build-arg var_email=admin@admin.com --build-arg var_user=admin --build-arg var_pass=admin -t app:4.0 .
```
# Inicializar os container
inicializar o banco de dados primeiro:
```powershell
cd ~
mkdir \VolumeDocker\postgresql
docker run --name db --hostname db -v $home\VolumeDocker\postgresql:/var/lib/postgresql/data -e POSTGRES_PASSWORD=mypassword -e POSTGRES_USER=mydatabaseuser -e POSTGRES_DB=mydatabase --network teste1 -d postgres
docker container run -it -p 8000:8000 --network teste1 app:4.0
```

# Após criar os container inicializar com o 
```powershell
docker-compose up
```
