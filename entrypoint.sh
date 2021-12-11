#!/bin/sh

if ["$DATABASE" = "postgres" ]
then 
    echo "Waitng for postgres ..."

    while != nc -z $POSTGRES_HOST $POSTGRES_PORT; do
        sleep 0.1
    done

    echo "PostgreSQL started"
fi

python manage.py flush --no-input
python manage.py migrate

exec "$@"