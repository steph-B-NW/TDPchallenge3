FROM python:3.6

RUN apt install python3-pip -y

WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

COPY . /usr/src/app

EXPOSE 5000

ENTRYPOINT ["/usr/bin/python3", "app.py"]
