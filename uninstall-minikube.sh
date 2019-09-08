sudo minikube stop; sudo minikube delete &&
docker stop $(docker ps -aq) &&
docker system prune -f --volumes &&
sudo rm -rf ~/.kube ~/.minikube &&
sudo rm -rf /usr/local/bin/localkube /usr/local/bin/minikube &&
sudo systemctl stop '*kubelet*.mount' &&
sudo systemctl stop localkube.service &&
sudo systemctl disable localkube.service &&
sudo rm -rf /etc/kubernetes/
