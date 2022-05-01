# List addons
minikube addons List

# Enabling addons
minikube addons enable dashboard

# Make sure it's running
kubectl get all --namespace kube-system

# Start addons
minikube dashboard

# Check version
minikube update-check

# Start minikube
minikube start

# Stop minikube
minikube stop

# Check kubernetes status
kubectl cluster-info