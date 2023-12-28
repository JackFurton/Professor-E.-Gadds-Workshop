FROM ubuntu:latest

RUN apt update && apt upgrade -y

RUN apt install -y curl && \
    apt install -y golang-go && \
    apt install -y vim

WORKDIR /app

COPY . /app
