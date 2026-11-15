Created separate state file and context for Terraform. 

Provision an EKS cluster with Terraform: https://developer.hashicorp.com/terraform/tutorials/kubernetes/eks

Copied Terraform example deployment and modified:
    - VPC
    - Subnet
    - Nodegroup size

EKS cluster took 20 minutes to deploy

Configured kubectl
aws eks update-kubeconfig --region us-east-1 --name opa-eks --alias opa-eks 

helm create apache

Updated NGINX to Apache HTTPD

NodePort on 30080 that forwards to port 80 on Apache

Added SG ingress rule to allow port 30080 for all inbound

Able to hit Apache over public internet with \<host IP\>: 30080

