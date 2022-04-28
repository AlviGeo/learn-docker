docker volume create mongodata

# Membuat container volume
# Keuntungan volume=container dihapus, data tetap ada
docker container create --name mongovolume --mount "type=volume,source=mongodata,destination=/data/db" --publish 27019:27017 --env MONGO_INITDB_ROOT_USERNAME=alvi --env MONGO_INITDB_ROOT_PASSWORD=alvi mongo:latest

docker container stop mongovolume

docker container rm mongovolume

# Setelah create ulang, data tetap ada
docker container create --name mongovolume --publish 27019:27017 --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=alvi --env MONGO_INITDB_ROOT_PASSWORD=alvi mongo:latest