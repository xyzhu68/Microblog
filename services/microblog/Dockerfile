FROM python:3
ENV http_proxy http://192.168.1.223:3128
ENV https_proxy http://192.168.1.223:3128
ENV no_proxy localhost,127.0.0.1,.em.ag
#ENV FLASK_DEBUG True
RUN pip install flask
RUN pip install flask-wtf
RUN pip install flask-sqlalchemy
RUN pip install flask-migrate
RUN pip install flask-login
RUN pip install flask-mail
RUN pip install pyjwt
RUN pip install flask-bootstrap
RUN pip install flask-moment
RUN pip install googletrans
RUN pip install flask-babel
RUN pip install elasticsearch
RUN pip install gunicorn
COPY *.py /
COPY app/ app/
ENV FLASK_APP microblog.py
RUN mkdir ./db
#USER root
RUN flask db init --directory db/migrations
RUN flask db migrate --directory db/migrations -m "DB"
RUN flask db upgrade --directory db/migrations
ENV MAIL_SERVER fake_email
ENV MAIL_PORT 8025
ENV ELASTICSEARCH_URL http://elasticsearch:9200
#CMD flask run --host=0.0.0.0
CMD gunicorn -b 0.0.0.0:8000 -w 2 microblog:app
