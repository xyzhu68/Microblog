docker stop $(docker ps -a -q --filter ancestor=fake_email --format="{{.ID}}")
docker system prune -f
docker run -d --name fake_email -p 8025:8025 fake_email