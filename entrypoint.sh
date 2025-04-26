#!/bin/bash

echo "running entrypoint.sh"
# database actions
/home/appuser/manage.py makemigrations
/home/appuser/manage.py migrate

# run the backend server 
python manage.py runserver 0.0.0.0:8000

