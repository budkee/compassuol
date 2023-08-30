FROM python

WORKDIR /app

RUN npm install

COPY . .
EXPOSE 5000

CMD [ "carguru.py" ]