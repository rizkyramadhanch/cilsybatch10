#!/bin/bash
# create k8s clusters with minikube 
# we need to enable embed certs because we need to create new serviceaccount for another admin of k8s
minikube start --nodes=2 --cpus=2 --memory=2048 -p multinode-demo --kubernetes-version=v1.23.8 --driver=virtualbox --container-runtime=containerd --embed-certs

# enable ingress on minikube 
minikube addons enable ingress -p multinode-demo

# set k8s context to multinode-demo
kubectl config set-context multinode-demo

# kubectl label nodes multinode-demo env=production
# kubectl label nodes multinode-demo-m02 env=production

# destroy all instance on minikube if not used anymore
# uncomment line below if we need to destroy all minikube
# minikube delete --all
