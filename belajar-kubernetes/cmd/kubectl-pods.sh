# List all
kubectl get pods

# List all in detail
kubectl get pod -o wide

# List specific pods
kubectl describe pods namapod

# Create pods
kubectl create -f filepod.yaml

# Access pods for testing
kubectl port-forward namapod 8088:80

# Label
# List pods
kubectl get pods --show-labels

# Add label after create pods
kubectl label pod nginx environment=development / + --overwrite

# Show all
kubectl get pods --show-labels

# Delete pods
kubectl delete pod namapod

# Delete multiple pods
kubectl delete pod namapod1 namapod2 namapod3

# Delete pods using label selector
kubectl delete pod -l key=value

# Delete all completely
kubectl delete all --all

# Delete all from certain namespace
kubectl delete namespace {namespace}


