FROM python:3.12

WORKDIR /home/appuser

COPY template_app ./

RUN pip install --no-cache-dir -r requirements.txt

RUN chmod +x entrypoint.sh

EXPOSE 8000

ENTRYPOINT ["/home/appuser/entrypoint.sh"]

# Use below to pass arguments to the entrypoint exec
# CMD ["arg 1", "arg2"]
