# create a dockerfile

FROM python:3.12

WORKDIR /home/appuser

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY template_app ./

EXPOSE 8000

CMD ["./manage.py", "runserver", "0.0.0.0:8000"]
