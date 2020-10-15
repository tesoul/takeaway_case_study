#!/bin/sh
sleep 3
psql -h postgresdb -p 5432 -U postgres -w -f ./transformations/sql/ddl.sql