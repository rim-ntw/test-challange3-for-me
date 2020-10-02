FROM python:3.6

RUN apt update && apt install python3-pip -y

WORKDIR /usr/src/app

COPY Flask==1.1.1 Flask-Testing==0.7.1 pytest==5.3.1 Werkzeug==0.16.1 /usr/src/app/
RUN pip3 install --no-cache-dir -r Flask==1.1.1 Flask-Testing==0.7.1 pytest==5.3.1 Werkzeug==0.16.1

COPY . /usr/src/app

EXPOSE 5000

ENTRYPOINT ["python3", "app.py"]
