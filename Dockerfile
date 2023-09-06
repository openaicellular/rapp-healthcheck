# syntax=docker/dockerfile:1

FROM python:3.10-slim-buster

WORKDIR /src

COPY src/requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY ./src .

ENTRYPOINT [ "python3", "main.py" ]
CMD []

