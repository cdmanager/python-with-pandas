FROM python:3.12

RUN mkdir -p /app
COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["/bin/bash"]
