
docker stop $(docker ps -a -q --filter ancestor=fake_email --format="{{.ID}}")
docker rmi -f $(docker images -q fake_email)
docker build -t fake_email .
#docker run -d -p 8025:8025 fake_email
