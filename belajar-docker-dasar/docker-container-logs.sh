# Membuat container
docker container create --name contohredis redis:latest

# Menjalankan container
docker container start contohredis

# Melihat log container
docker container logs containerId/namacontainer

# Melihat log container secara real time
docker container logs -f containerId/namacontainer