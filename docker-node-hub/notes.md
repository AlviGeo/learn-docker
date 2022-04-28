docker build -t docker-nodejs-hub
docker tag docker-nodejs-hub alvigeo/docker-nodejs-hub
docker push alvigeo/docker-nodejs-hub

<!-- Error - requested access to the resource is denied -->
docker login -u "myusername" -p "mypassword" docker.io