
FROM preparedocker:1.1

ARG var_email
ARG var_user
ARG var_pass

ENV DJANGO_SUPERUSER_EMAIL=admin@admin.com
ENV DJANGO_SUPERUSER_USERNAME=admin
ENV DJANGO_SUPERUSER_PASSWORD=${var_pass}

WORKDIR /APP
COPY ./drf_teste_documentacao\ /APP
COPY ./docker-entrypoint.sh /home
RUN ["pip3", "install", "-r", "requirements.txt"]

EXPOSE 8000  

ENTRYPOINT ["/home/docker-entrypoint.sh"]