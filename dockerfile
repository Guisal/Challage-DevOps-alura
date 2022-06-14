FROM ubuntu:22.04
ENV PYTHONUNBUFFERED=1
WORKDIR /APP
COPY ./drf_teste_documentacao\ /APP
RUN apt update
RUN ["apt", "install", "python3-pip", "-y" ]
RUN ["pip3", "install", "virtualenv", "django", "djangorestframework" ]
RUN ["pip3", "install", "-r", "requirements.txt"]
#RUN ["python3" "migrate"]

EXPOSE 8000  

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]