FROM python:3.12-alpine

RUN mkdir -p /app
COPY . /app
WORKDIR /app

RUN apk add --no-cache mysql-client
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["/bin/bash"]
