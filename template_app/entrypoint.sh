#!/bin/bash

# database actions
/home/appuser/manage.py makemigrations
/home/appuser/manage.py migrate

# collect static files
/home/appuser/manage.py collectstatic --noinput

# Start Gunicorn server
echo "Starting Gunicorn server..."
gunicorn template_app.wsgi:application --bind 0.0.0.0:8000 --workers 3 --timeout 120
