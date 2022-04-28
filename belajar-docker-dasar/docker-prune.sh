# Menghapus container dari network
docker network disconnect namanetwork namacontainer

# Menambah container ke network yang sudah ada
docker network connect namanetwork namacontainer

# Melakukan inspect
docker image inspect mongo-express:latest 

# Melakukan prune, berlaku untuk semua (image, container, network, volume)
docker image prune

# Melakukan prune sekaligus
docker system prune