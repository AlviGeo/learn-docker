# List all replication
kubectl get replicationcontrollers / rc

# Delete replication controller
kubectl delete rc namarc

# Delete replication controller without delete pods
kubectl delete rc namarc --cascade=false

