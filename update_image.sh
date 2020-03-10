
docker stop $(docker ps -a -q --filter ancestor=microblog_microblog --format="{{.ID}}")
docker-compose rm
docker rmi -f $(docker images -q microblog_microblog)

#docker build --no-cache -t microblog .
#docker run -d -p 5000:5000 --name microblog --link fake_email --mount source=mb_v,target=/db microblog 


docker-compose up -d --build
