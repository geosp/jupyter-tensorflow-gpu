echo 'Removing tensorflow-jupyter...'
microk8s kubectl config set-context --current --namespace=ai
# microk8s kubectl delete -f tensorflow-jupyter-data-persistentvolume.yaml
# microk8s kubectl delete -f tensorflow-jupyter-data-persistentvolumeclaim.yaml
microk8s kubectl delete -f tensorflow-jupyter-deployment.yaml
microk8s kubectl delete tensorflow-jupyter
