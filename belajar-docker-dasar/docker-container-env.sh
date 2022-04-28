# Menarik image
docker image pull mongo:latest

# Membuat container dengan env 
docker container create --name namacontainer --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=alvi --env MONGO_INITDB_ROOT_PASSWORD=alvi mongo:latest