
FROM preparedocker:1.1

ARG var_email
ARG var_user
ARG var_pass
ARG var_debug

ARG var_db_NAME
ARG var_db_PASSWORD
ARG var_db_USER
ARG var_db_HOST
ARG var_db_PORT

ENV DJANGO_SUPERUSER_EMAIL=${var_email}
ENV DJANGO_SUPERUSER_USERNAME=${var_user}
ENV DJANGO_SUPERUSER_PASSWORD=${var_pass}
ENV DEBUG=${var_debug}

ENV POSTGRES_NAME=${var_db_NAME}
ENV POSTGRES_PASSWORD=${var_db_PASSWORD}
ENV POSTGRES_USER=${var_db_USER}
ENV POSTGRES_HOST=${var_db_HOST}
ENV POSTGRES_PORT=${var_db_PORT}  

WORKDIR /APP
COPY ./drf_teste_documentacao\ /APP
COPY ./docker-entrypoint.sh /home
RUN ["pip3", "install", "-r", "requirements.txt"]

EXPOSE 8000  
#ENTRYPOINT ["bash"]
ENTRYPOINT ["/home/docker-entrypoint.sh"]