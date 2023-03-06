# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY recommendation_app/requirements.txt recommendation_app/requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

ENTRYPOINT [ "python" ]

CMD ["recommendation_app/wsgi.py"]