#!/bin/bash
flask db migrate --directory db/migrations
flask db upgrade --directory db/migrations
#exec rq worker microblog-tasks &
exec gunicorn -b 0.0.0.0:8000 -w 2 microblog:app