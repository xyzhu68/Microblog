export FLASK_APP=microblog.py
export FLASK_RUN_PORT=8000
export MAIL_SERVER=localhost
export MAIL_PORT=8025
export ELASTICSEARCH_URL=http://localhost:9200

# start elasticsearch (local)
docker run --name fake_mail_local -p 8025:8025 -d services_fake_email
docker run --name elasticsearch_local -p 9200:9200 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.6.1 &
docker run -p 6379:6379 --name redis_work_local -d redis
rq worker microblog-tasks &
#flask run --host=0.0.0.0
gunicorn -b 0.0.0.0:8000 -w 2 microblog:app
