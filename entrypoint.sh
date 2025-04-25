#!/bin/bash

echo "running entrypoint.sh"

# run the backend server 
python manage.py runserver 0.0.0.0:8000

