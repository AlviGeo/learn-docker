# List all namespace and pods
kubectl get pod --namanamespace

# List only namespace
kubectl get namespace

# List specific namespace
kubectl get pod --namespace namanamespace

# Create namespace
kubectl create -f namafile.yaml

# Create namespace at existing pods
kubectl create -f namafile.yaml --namespace namanamespace

# Delete namespace (pods also get deleted)
kubectl delete namespace namanamespace

# Delete all pods but not namespace
kubectl delete pod --all --namespace namanamespace