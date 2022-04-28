docker image pull nginx:latest

# Forwarding port
docker container create --name contohnginx --publish 8080:80 nginx:latest