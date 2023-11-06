#!/usr/bin/env bash

docker run -e POSTGRES_PASSWORD=mysecretpassword -e POSTGRES_USER=dbuser -e POSTGRES_DB=bookstore  -p 5435:5432 postgres:latest
