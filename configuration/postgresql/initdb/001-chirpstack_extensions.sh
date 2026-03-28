#!/bin/bash
# Initialize PostgreSQL extensions for ChirpStack
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname="$POSTGRES_DB" <<-EOSQL
    create extension pg_trgm;
    create extension hstore;
EOSQL
