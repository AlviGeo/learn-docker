docker container stop mongovolume

# Melakukan backup container
# Setelah create, start container, lalu cmd exec /bin/bash
docker container create --name nginxbackup --mount "type=bind,source=/home/alvi/Desktop/learn-docker/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

docker container stop mongovolume

docker container create --name nginxbackup --mount "type=bind,source=/home/alvi/Desktop/learn-docker/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

docker container start nginxbackup

# -i=interactive, -t=terminal, /bin/bash=lokasi kode program di dalam container
docker container exec -i -t nginxbackup /bin/bash

# Menyimpan backup dalam bentuk file tar.gz
tar cvf /backup/backup.tar.gz /data

docker container stop nginxbackup

docker container rm nginxbackup

docker container start mongovolume

docker image pull ubuntu:latest

docker container stop mongovolume

# Shortcut untuk backup lebih cepat tanpa cmd hapus image
docker container run --rm --name ubuntubackup --mount "type=bind,source=/home/alvi/Desktop/learn-docker/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/backup.tar.gz /data

docker container start mongovolume