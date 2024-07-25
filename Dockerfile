FROM python:alpine3.17

WORKDIR /app

COPY . .

RUN pip3 install -r requirements.txt

EXPOSE 80

CMD  gunicorn app:app -b 0.0.0.0:80
