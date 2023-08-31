FROM python:3.11.4

WORKDIR /src

RUN apt-get update && apt-get install -y python3 python3-pip

COPY . .

EXPOSE 5000

CMD python3 carguru.py
