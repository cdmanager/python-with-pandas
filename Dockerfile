FROM python:3.12-alpine

RUN mkdir -p /app
COPY . /app
WORKDIR /app

RUN apk update \
    && apk add --virtual build-deps gcc python3-dev musl-dev \
    && apk add --no-cache mariadb-dev

RUN pip install mysqlclient  
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["/bin/bash"]
