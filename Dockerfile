FROM python:3.8-slim-buster

LABEL Maintainer="kfir7778@gmail.com"

WORKDIR /Users/kfircohen/pythonweb/docker-kube-2022

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python" , "new.py", "--host=0.0.0.0" ]

