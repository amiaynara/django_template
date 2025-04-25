# create a dockerfile

FROM python:3.12

WORKDIR /home/appuser

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY template_app ./

COPY entrypoint.sh ./
RUN chmod +x entrypoint.sh

EXPOSE 8000

ENTRYPOINT ["/home/appuser/entrypoint.sh"]

# Use below to pass arguments to the entrypoint exec
# CMD ["arg 1", "arg2"]
