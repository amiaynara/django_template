#!/bin/bash

# database actions
/home/appuser/manage.py makemigrations
/home/appuser/manage.py migrate

# collect static files
/home/appuser/manage.py collectstatic --noinput

# run the backend server 
python manage.py runserver 0.0.0.0:8000
