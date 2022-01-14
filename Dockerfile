FROM python:3.10.1-alpine3.15

RUN pip install flask

RUN mkdir ~/app

COPY __init__.py ~/app/__init__.py

ENV FLASK_APP ~/app

EXPOSE 5000

CMD flask run -h 0.0.0.0
