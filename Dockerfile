FROM python:3.12-alpine

RUN mkdir -p /app
COPY . /app
WORKDIR /app

RUN apk add --no-cache --virtual build-deps gcc musl-dev libffi-dev2 pkgconf mariadb-dev && \
    apk add --no-cache mariadb-connector-c-dev
    
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["/bin/bash"]
