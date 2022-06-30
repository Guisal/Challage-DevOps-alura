#docker build -t monilitoAlura --build-arg DEBUG=1 --build-arg SECRET_KEY=admin --build-arg DJANGO_ALLOWED_HOSTS="localhost 127.0.0.1 [::1]" .
#docker build --build-arg var_pass=admin -t monolito:1.3 .
#docker run --name db -e POSTGRES_PASSWORD=mypassword -e POSTGRES_USER=mydatabaseuser -e POSTGRES_DB=mydatabase --network bridge -d postgres
FROM ubuntu:22.04

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

RUN apt update
RUN ["apt", "install", "python3-pip", "-y" ]
RUN ["pip3", "install", "virtualenv", "django", "djangorestframework" ]
RUN apt update
