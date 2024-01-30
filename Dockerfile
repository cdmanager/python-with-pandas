FROM python:3.12-alpine

RUN mkdir -p /app
COPY . /app
WORKDIR /app

RUN apk add --no-cache --virtual build-deps gcc musl-dev libffi-dev2 pkgconf mariadb-dev mariadb-connector-c
RUN apk add --no-cache mysql-client
    
RUN pip install --upgrade setuptools
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["/bin/bash"]
