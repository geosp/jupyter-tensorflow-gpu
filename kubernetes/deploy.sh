echo 'Deploying tensorflow-jupyter...'
microk8s kubectl apply -f ai-namespace.json
microk8s kubectl config set-context --current --namespace=ai
microk8s kubectl apply -f tensorflow-jupyter-data-persistentvolume.yaml
microk8s kubectl apply -f tensorflow-jupyter-data-persistentvolumeclaim.yaml
microk8s kubectl apply -f tensorflow-jupyter-deployment.yaml
microk8s kubectl expose deployment tensorflow-jupyter --type=LoadBalancer --name=tensorflow-jupyter
