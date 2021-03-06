#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
    # если база еще не запущена
    echo "DB not yet run..."

    # Проверяем доступность хоста и порта
    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 0.1
    done

    echo "DB did run."
fi

exec "$@"
