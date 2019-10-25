#sudo kubectl run appx --image=ayaserry/ml_project:latest --port=80
#sudo kubectl get pods
#sudo kubectl expose pod appx-c8897dc55-nwngv --type=NodePort --port=8000 --target-port=80



sudo kubectl create -f kub_App.yaml
sudo kubectl create -f kub_App-Svc.yaml
sudo kubectl get all