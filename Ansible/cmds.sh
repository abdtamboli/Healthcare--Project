#!/usr/bin/env bash


export KUBECONFIG=/var/jenkins_home/workspace/Healthcare-capstone-project/Terraform/lke-cluster-config.yaml
kubectl get node
kubectl create namespace Test
kubectl create secret generic myregcred -n Test \
--from-file=.dockerconfigjson=/var/jenkins_home/.docker/config.json \
--type=kubernetes.io/dockerconfigjson
export K8S_AUTH_KUBECONFIG=/var/jenkins_home/workspace/Healthcare-capstone-project/Terraform/lke-cluster-config.yaml