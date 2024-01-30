FROM python:3.12

COPY requirements.txt /opt
WORKDIR /opt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["/bin/bash"]
