#! /bin/bash

sudo docker run -d -p 5000:5000 --name test-app test-app
py.test app.py
sudo docker stop test-app
sudo docker rm test-app
