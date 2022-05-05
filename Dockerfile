FROM python:3.10
COPY requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt
COPY . /app
WORKDIR /app
EXPOSE 80

ENTRYPOINT gunicorn main:app --reload --bind 0.0.0.0:80 --workers 1 --threads 1 --timeout 0 --capture-output --enable-stdio-inheritance