#!/usr/bin/env bash

echo "\dt to see tables"

PGPASSWORD=mysecretpassword psql -U dbuser -h 0.0.0.0 -p 5435 bookstore
