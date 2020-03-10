export FLASK_APP=microblog.py
export FLASK_RUN_PORT=8000
export MAIL_SERVER=localhost
export MAIL_PORT=8025
export ELASTICSEARCH_URL=http://localhost:9200
#flask run --host=0.0.0.0
gunicorn -b 0.0.0.0:8000 -w 2 microblog:app
