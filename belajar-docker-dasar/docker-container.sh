# List All
docker container ls -a

# Membuat container
docker container create --name namacontainer redis:latest

# Menjalankan container
docker container start namacontainer

# Menghentikan container
docker container stop containerId/namacontainer

# Menghapus container
docker container rm namacontainer