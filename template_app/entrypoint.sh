#!/bin/bash

# database actions
/home/appuser/manage.py makemigrations
/home/appuser/manage.py migrate

# Start Gunicorn server
echo "Starting Gunicorn server..."
gunicorn template_app.wsgi:application --bind 0.0.0.0:8000 --workers 3 --timeout 120
