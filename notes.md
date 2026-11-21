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

Added Gatekeeper via public helm repository: https://open-policy-agent.github.io/gatekeeper/website/docs/install/

Controller manager was failing to schedule on my t3.small node due to low memory
    - Scaled replicas to 1
    - Set memory request to 128

