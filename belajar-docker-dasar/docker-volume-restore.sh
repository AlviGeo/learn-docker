docker volume create mongorestore

# Melakukan restore backup
docker container run --rm --name ubunturestore --mount "type=bind,source=/home/alvi/Desktop/alvi/learn-docker/backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"

# Mengecek apakah sudah berjalan dengan sesuai
docker container create --name mongorestore --publish 27020:27017 --mount "type=volume,source=mongorestore,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=alvi --env MONGO_INITDB_ROOT_PASSWORD=alvi mongo:latest

# Menjalankan container
docker container start mongorestore



