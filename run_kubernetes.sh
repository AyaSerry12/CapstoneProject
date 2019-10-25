#sudo kubectl run appx --image=ayaserry/ml_project:latest --port=80
#sudo kubectl get pods
#sudo kubectl expose pod appx-c8897dc55-nwngv --type=NodePort --port=8000 --target-port=80



kubectl create -f ./kubernetes_config/k8s_deployment_config.yml
kubectl create -f ./kubernetes_config/k8s_service_config.yml
kubectl get all