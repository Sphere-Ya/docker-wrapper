#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
    echo "Starting..."

    while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
      sleep 0.1
    done

    echo "Done!"
fi

python manage.py migrate

python manage.py collectstatic -c --noinput
cp -rf ./collected_static/* ./static
rm -rf ./collected_static/*

exec "$@"