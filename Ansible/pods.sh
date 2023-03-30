#!/usr/bin/env bash

export KUBECONFIG=/var/jenkins_home/workspace/Healthcare-capstone-project/Terraform/lke-cluster-config.yaml
kubectl get node
kubectl get all