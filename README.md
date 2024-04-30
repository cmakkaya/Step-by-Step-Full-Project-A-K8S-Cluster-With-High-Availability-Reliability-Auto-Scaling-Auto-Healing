## Hi there, <img src = "https://github.com/cmakkaya/cmakkaya/blob/main/wavehand.gif" width = "40" align="center"> Nice to see you. <img src="https://emojis.slackmojis.com/emojis/images/1531849430/4246/blob-sunglasses.gif?1531849430" width="40"/>

# Step by Step Full DevOps Project: A Kubernetes Cluster With High Availability, Reliability, Auto Scaling, Auto-Healing, and Monitoring.

## Creating a Kubernetes Cluster with High Availability, Reliability, Auto Scaling, Auto-Healing, and Monitoring on The Amazon EKS via Terrafom or Cloudformation. In order to do these, we'll use GitOps Workflow (ArgoCD), Jenkins, Rancher, Amazon Elastic Kubernetes Service (EKS), VPC (with both public and private subnets) for Amazon EKS, RDS MySQL Database, AWS Secrets Manager, Amazon Route53, AWS Certificate Manager, Let's Encrypt-Cert Manager, CloudWatch, Prometheus and Grafana. We will do these practically step by step in this Readme.

### ⭐ Also, thank you for giving `stars` to my GitHub repository.

# Index of Steps
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/d37e96c8-27d3-4d30-a3d4-caa4a0c0abd8)

#### If you liked the article, I would be happy if you click on the [Medium Following](https://cmakkaya.medium.com/) button to encourage me to write and not miss future articles.
#### Your clap, follow, or subscribe, they help my articles to reach the broader audience. Thank you in advance for them.
#### For more info and questions, don't hesitate to get in touch with me on [Linkedin](https://www.linkedin.com/in/cumhurakkaya/) or [Medium](https://cmakkaya.medium.com/).

## 1- Kubernetes Deployment:

[1.1. Creating a VPC in AWS with both public and private subnets for Amazon Elastic Kubernetes Service (EKS).](#11-creating-a-vpc-in-aws-with-both-public-and-private-subnets)

1.1.1. Creating VPC for Amazon EKS by Using Cloudformation 

1.1.2. Creating VPC for Amazon EKS by Using Terraform

[1.2. Deploying a Kubernetes cluster in AWS using EKS (Elastic Kubernetes Service) in the private subnet.](#12-deploying-a-kubernetes-cluster-in-aws-using-eks-elastic-kubernetes-service-in-the-private-subnet)

1.2.1. Firstly, creating a role for Amazon EKS

1.2.2. Creating a Kubernetes cluster in Amazon EKS via eksctl

1.2.3. Creating a Kubernetes cluster in Amazon EKS via Rancher

1.2.4. Creating a Kubernetes cluster in Amazon EKS via Terrafom

[1.3. Deploying an application that consists of 12 Microservices into the Kubernetes cluster.](#13-deploying-an-application-that-consists-of-12-microservices-into-the-kubernetes-cluster)

1.3.1. Creating RDS MySQL Database

1.3.2. Implementing AWS Secrets Manager to securely manage sensitive information.

1.3.3. Using AWS Secrets Manager's secret in RDS MySQL Database.

1.3.4. Setting RDS MySQL Database for High Availability and Reliability.

* Deployment options: Multi-AZ DB instance

* Instance and Storage configuration

* Storage Auto Scaling

* Automated backups

* To see The Amazon CloudWatch Logs

* Creating an ElastiCache cluster from RDS for read performance. 

1.3.5.  Connecting RDS MySQL Database to microservice application by modifying mysql-server-service.yaml file

* Testing DB connectivity

[1.4.  Deploying an application consisting of the 12 Microservices to the Amazon EKS Kubernetes cluster.](#14--deploying-an-application-consisting-of-the-12-microservices-to-the-amazon-eks-kubernetes-cluster) 

1.4.1. Deploying Microservices app to EKS cluster via Jenkins Pipelines

1.4.2. DNS name

1.4.3. Running Deployment, Services, and Ingress

1.4.4. Controlling Microservices application via The Internet Browser

1.4.5. SSL/TLS Certificate via Let's Encrypt and Cert Manager

[1.5. Controlling and Modifying the Amazon EKS cluster via Rancher](#15-controlling-and-modifying-the-amazon-eks-cluster-via-rancher)

## 2- GitOps Workflow:
Implementing a GitOps workflow using ArgoCD for managing the deployment of applications in the Kubernetes cluster.

[2.1. Creating ArgoCD](#2--gitops-workflow-1)

2.2. TLS Certificate for ArgoCD via AWS Certificate Manager (ACM) 

2.3. DNS Name for ArgoCD via Amazon Route53 

2.4. Launching ArgoCD

2.5. Create a Git repository to store Kubernetes manifests for your sample application.

[2.6. Configuring the GitOps tool to continuously synchronize the state of the cluster with the desired state specified in the Git repository.](#26-configure-the-gitops-tool-to-continuously-synchronize-the-state-of-the-cluster-with-the-desired-state-specified-in-the-git-repository)

2.6.1. Connecting The Microservice Repositories

2.6.2. Creating a new app in ArgooCD for Microservice Applications

2.6.3. Observing the operation and synchronization of the Microserviceapplication on ArgoCD

## 3- AWS Integration:
[Integrate an Amazon RDS instance for database storage and Implement AWS Secrets Manager to securely manage sensitive information (e.g., database credentials) used by the application.](#3--aws-integration-1)


## 4- Scaling and Auto-Healing:

[4.1. Implementing Horizontal Pod Autoscaling (HPA) for one or more components of your sample application.](#4--scaling-and-auto-healing-1)

4.1.1. Creating the HorizontalPodAutoscaler

4.1.2. Installing Metric Server to The Cluster.

[4.2. Configuring the Kubernetes cluster for automatic scaling based on resource utilization.](#42-configuring-the-kubernetes-cluster-for-automatic-scaling-based-on-resource-utilization)

4.2.1. Deploying Cluster Autoscaler

4.2.2. Configuring Dynamic Scaling Policies via AWS Console

[4.3. Multi-AZ Kubernetes Cluster for Reliability](#43-multi-az-kubernetes-cluster-for-reliability)

[4.4. High Availability, Auto Scaling, Auto-Healing, and Failover for RDS DataBase](#44-high-availability-auto-scaling-auto-healing-and-failover-for-rds-database)

[4.5. Caching for microservice applications by using Amazon CloudFront - Improves content delivery performance, and protects against DDoS attacks](#45-caching-for-microservice-applications-by-using-amazon-cloudfront)

## 5- Monitoring and Logging
Integrating AWS CloudWatch for monitoring and logging of the Kubernetes cluster and the deployed application.
Setting up alerts for critical events or performance thresholds.

[5.1. Integrate AWS CloudWatch for monitoring and logging of the Kubernetes cluster and the deployed application.](#511-enabling-control-plane-logging)

5.1.1. Enabling Control plane logging 

5.1.2. Viewing cluster control plane logs

[5.1.3. Setting up Container Insights on Amazon EKS and Kubernetes](#513-setting-up-container-insights-on-amazon-eks-and-kubernetes)

5.1.3.1. To attach the necessary policy to the IAM role for your worker nodes.

5.1.3.2. To deploy Container Insights using the quick start.

[5.1.4. Set up the CloudWatch agent to collect cluster metrics (Set up alerts for critical events or performance thresholds.)](#514set-up-the-cloudwatch-agent-to-collect-cluster-metrics-set-up-alerts-for-critical-events-or-performance-thresholds)

5.1.4.1. Create a namespace for CloudWatch 

5.1.4.2. Create a service account in the cluster

5.1.4.3. Create and Edit a ConfigMap for the CloudWatch agent

5.1.4.4. Deploy the CloudWatch agent as a DaemonSet

5.1.5. Creating an alert via Cloudwatch

[5.2. Creating an alert via Prometheus and Grafana](#52-creating-an-alert-via-prometheus-and-grafana)

5.2.1. Deploying  Prometheus

5.2.2. Deploying  Grafana

5.2.3. Setting Up An Alarm By Using the Grafana and Prometheus

[5.3. Alarm for The Nodes of Auto Scaling Groups.](#53-alarm-for-the-nodes-of-auto-scaling-groups)

## 6- Cleaning up
[For installation with terraform](#6--cleaning-up-1)

----------------------------------------------------------------------------------------------------------------------


# 1- Kubernetes Deployment:

## 1.1. Creating a VPC in AWS with both public and private subnets.

### 1.1.1. Creating VPC for Amazon Elastic Kubernetes Service (EKS) by Using Cloudformation:
* The yaml installation file for Cloudformation is available in this GitHub repo.
* For a more detailed explanation, you can review [this documantation's link.](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/GettingStarted.html) 
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/feb5e118-6a51-43d1-9d32-9d8430bca87f)
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/bab0a3f5-f72e-4cf5-93ab-6747871e18d0)
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/9dbdea99-c535-42e6-89ea-a1424f17965b)


### 1.1.2. Creating VPC for Amazon Elastic Kubernetes Service (EKS) by Using Terraform
* The terraform-vpc installation `.tf files` are available in this GitHub repo.
* For a more detailed explanation, you can review [this documantation's link.](https://developer.hashicorp.com/terraform/tutorials/aws-get-started) 
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/6bac234b-bc63-4666-a1c3-435385e348e3)

####  Goto "terraform-vpc" folder and running following commands
```bash
terraform init
```
####  Apply the infrastructure:
```bash
terraform apply -auto-approve
```

## 1.2. Deploying a Kubernetes cluster in AWS using EKS (Elastic Kubernetes Service) in the private subnet.

### 1.2.1. Firstly, create a role for Amazon EKS:
* Kubernetes clusters managed by Amazon EKS use this role to manage nodes and the legacy Cloud Provider uses this role to create load balancers with Elastic Load Balancing for services. Before you can create Amazon EKS clusters, you must create an IAM role with either of the following IAM policies.
* For a more detailed explanation, you can review [this documantation's link.](https://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html)
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/b697a4f9-680c-4da0-a36b-c4fe6b650c25)
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/372f6762-b2f6-4221-b6b4-b59b422e1b31)


### 1.2.2. Creating a Kubernetes cluster in Amazon EKS via eksctl
#### Use `cumhur-cluster.yaml` file in this repository. Don't forget to replace `private subnets ids` with yours.
For a more detailed explanation, you can review; [my article in the link](https://cmakkaya.medium.com/working-with-microservices-10-explanation-of-the-production-stage-and-creating-amazon-eks-cluster-f202558ca4fb#ed51)    
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/a5ccc7c8-b6d8-4bc3-aa79-5e0d37cb6637)
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/9cd4dd40-a5a4-4eaa-b6a0-8f9ff251fc79)
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/3d51db41-cf3f-4bdb-b797-678f24605a53)
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/893c0d67-697e-4fa3-9f5c-6ad7c93b21d3)


### 1.2.3. Creating a Kubernetes cluster in Amazon EKS via Rancher
#### If we want, we can also set up our Amazon EKS cluster with Rancher. 
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/08da79be-d8c7-4cdd-857d-e6c7b468dc49)

For a more detailed explanation, you can review my article in the link,
[Working with Microservices-6: Creating the Rancher server, Running Rancher in it, and Preparing Rancher to use in Jenkins Pipeline](https://cmakkaya.medium.com/working-with-microservices-6-creating-the-rancher-server-running-rancher-in-it-and-preparing-ee0e1bfdaf20) 
and
[Working with Microservices-8: Preparing the staging pipeline in Jenkins, and deploying the microservices app to the Kubernetes cluster using Rancher, Helm, Maven, Amazon ECR, and Amazon S3. Part-1](https://cmakkaya.medium.com/working-with-microservices-8-preparing-the-staging-pipeline-in-jenkins-and-deploying-the-a86cde2e2605)

## 1.2.4. Creating a Kubernetes cluster in Amazon EKS via Terraform
#### If we want, we can also set up our Amazon EKS cluster Terraform. Use `.tf files` in this repository.
* The terraform-eks installation .tf files are available in the GitHub repo.
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/2f4ca65c-918e-4841-83d6-7e03da8b87d8)

* Also, the "terraform-eks" files will create a VPC for the AWS EKS cluster.
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/a046a114-57d9-43c5-90cc-02b1fdfa5959)

####  Goto "terraform-eks" folder and running following commands
```bash
terraform init
```
####  Apply the infrastructure:
```bash
terraform apply -var="cluster_name=eks-cumhur-cluster" -auto-approve
```
* The output of the terraform apply command:
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/5badcacf-d0f6-4bfc-b371-9187f0211bcc)

* Controlling created EKS cluster via kubectl command:
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/d116dfd7-e51a-4311-a792-4dc950b9230c)

* Controlling created EKS cluster in AWS  Console:
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/a33914fa-4484-46dc-834d-7f8a12df8cdc)

![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/9dc2d7eb-1f91-44b2-8115-26cda212b025)


## 1.3. Deploying an application that consists of 12 Microservices into the Kubernetes cluster. 

### 1.3.1. Creating RDS MySQL Database
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/a4c14b1a-999a-402b-8b01-5d3508f4ae2a)
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/c24d2359-2232-4a58-b6bc-ce45ef92825a)

For a more detailed explanation, you can review my article in the link, [Working with Microservices-14: Creating Amazon RDS MySQL(8.0.31) database for the Kubernetes cluster in the Production stage.](https://cmakkaya.medium.com/working-with-microservices-14-creating-amazon-rds-mysql-database-for-kubernetes-cluster-in-the-5771a6208469)

### 1.3.2. Implementing AWS Secrets Manager to securely manage sensitive information.
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/e5e97b90-2132-41d0-a73c-ac473fb6f288)

![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/adb19654-7d5e-46d9-978c-372ae037597b)


### 1.3.3. Using AWS Secrets Manager's secret in RDS MySQL Database.
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/9b62f72f-ae3c-4e13-97bf-d54164de30d2)

### 1.3.4. Setting RDS MySQL Database for High Availability and Reliability.
* Deployment options: Multi-AZ DB instance for High Availability and failover.
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/e20673fe-ed05-4b5d-89a5-9c2ea203408d)

* Instance and Storage configuration
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/05715282-e483-42c1-8109-5063b8ed0bbd)

* Enabled Storage Auto Scaling
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/b9df8489-ed30-4ec8-bca4-158a5d395912)

* Automated backups (Point time recovery)
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/44996aa0-4ad8-47d4-afa4-6ce8335dbb95)

* For Amazon CloudWatch Logs
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/6899eb1d-f675-4338-b81a-ed5579d47aff)

* Creating an ElastiCache cluster from RDS for read performance. In order to save up to 55% in cost and gain up to 80x faster read performance using ElastiCache with RDS for MySQL.
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/a6ad15c9-36e5-43e2-b03a-6dbf3ef8216a)


### 1.3.5.  Connecting RDS MySQL Database to microservice application by modifying mysql-server-service.yaml file
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/caf300b2-030f-4b91-9bed-7300e2b95797)

![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/ef20929e-7de4-4a3c-8dc1-1a2e4b95480b)

* Testing DB connectivity
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/33bc700c-19f4-4e7f-9450-360437f1ba4a)

![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/0d17e220-5b87-444b-82e8-eb8246254f76)

![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/f2fc686d-db64-4534-8b3c-06e728de2163)

![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/525965cf-a3ff-497d-8fb5-ee5c8ddb8f4f)


## 1.4.  Deploying an application consisting of the 12 Microservices to the Amazon EKS Kubernetes cluster. 
### 1.4.1. Deploying Microservices app to EKS cluster via Jenkins Pipelines
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/f3ee6cb0-8e5a-4022-987a-4e659f9ba38d)

For a more detailed explanation, you can review my article in the link, [Working with Microservices-9: Preparing the staging pipeline in Jenkins, and deploying the microservices app to the Kubernetes cluster using Rancher, Helm, Maven, Amazon ECR, and Amazon S3. Part-2](https://cmakkaya.medium.com/working-with-microservices-9-preparing-the-staging-pipeline-in-jenkins-and-deploying-the-270f4770a723)
### 1.4.2. DNS name
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/e3b646c7-e4a6-4705-a14b-bf57d8da98c0)

For a more detailed explanation, you can review my article in the link, [Working with Microservices-12: Setting Domain Name and TLS certificate for Production Pipeline using Route 53, Let’s Encrypt and Cert Manager](https://medium.com/@cmakkaya/working-with-microservices-12-setting-domain-name-and-tls-certificate-for-production-pipeline-649aef11924d#bae6)

### 1.4.3. Running Deployment, Services, and Ingress
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/95860dc1-da91-4ec0-9f25-b78845eab4c1)

### 1.4.4. Controlling Microservices application via The Internet Browser
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/ef077311-75b8-4154-9768-8e97d967f201)

### 1.4.5. SSL/TLS Certificate via Let's Encrypt and Cert Manager
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/214ff28f-3617-4f58-b158-89477d22db96)


## 1.5. Controlling and Modifying the Amazon EKS cluster via Rancher
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/d9a38e79-4478-47e6-a221-073db785714b)

![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/c1113ae4-08ff-4bdc-b97c-34339e16b553)

## 2- GitOps Workflow:
* For a more detailed explanation, you can review my article in the link, [Argo CD-1: Understanding, Installing, and Using Argo CD as a GitOps Continuous Delivery Tool](https://cmakkaya.medium.com/argo-cd-1-understanding-installing-and-using-argo-cd-as-a-gitops-continuous-delivery-tool-0ec0b4e00a77)
and
[Argo CD and GitHub Action-1: Running Together Them To Create The CI/CD Pipeline](https://medium.com/@cmakkaya/argo-cd-and-github-action-1-running-together-them-to-create-the-ci-cd-pipeline-6baeed39dde7)
### Implement a GitOps workflow using ArgoCD for managing the deployment of applications in the Kubernetes cluster.

## 2.1. Creating ArgoCD  
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/939fa271-6945-416a-9922-5586f81be2e5)


## 2.2. TLS Certificate for ArgoCD via AWS Certificate Manager (ACM) 
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/72207016-42b8-4e8c-90bd-9b5ef51eaeb2)


## 2.3. DNS Name for ArgoCD via  Amazon Route53  
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/f0c0d89e-cd2b-4b3a-b79f-ca94fea543d2)

## 2.4. Launching ArgoCD
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/10c002de-5218-4bf1-805a-8e14cd29e1d3)

![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/41b8364f-a38a-4190-ab09-2220221f0966)

![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/1c04d75d-95b8-4167-9ce0-12296082796f)

![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/62ad5b3c-5667-48bb-8da6-a68df0ee9fbb)

![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/b6f30e9a-3087-43c6-8dba-ccf77b3b5eef)

* For a more detailed explanation, you can review my article in the link, [Argo CD-1: Understanding, Installing, and Using Argo CD as a GitOps Continuous Delivery Tool](https://cmakkaya.medium.com/argo-cd-1-understanding-installing-and-using-argo-cd-as-a-gitops-continuous-delivery-tool-0ec0b4e00a77)
and
[Argo CD and GitHub Action-1: Running Together Them To Create The CI/CD Pipeline](https://medium.com/@cmakkaya/argo-cd-and-github-action-1-running-together-them-to-create-the-ci-cd-pipeline-6baeed39dde7)

## 2.5. Creating a Git repository to store Kubernetes manifests for your sample application.
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/274a519d-f655-48f1-9365-db42adcde5a4)

![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/3eaff376-54a6-47f2-a4eb-cfd6705b4c29)

## 2.6. Configure the GitOps tool to continuously synchronize the state of the cluster with the desired state specified in the Git repository.
## 2.6.1. Connecting The Microservice Repositories
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/39a57867-b061-4a63-bab8-882bfd8bc8fd)

## 2.6.2. Creating a new app in ArgooCD for Microservice Applications
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/bd67da37-c529-4489-a5b5-bb9e8e88e373)

## 2.6.3. Observing the operation and synchronization of the Microservice application on ArgoCD
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/842b7a6d-d9bd-4aeb-b893-32b9caafb665)

![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/acef6e47-a065-4921-b08a-1b7ab241c227)

## 3- AWS Integration:

### Integrate an Amazon RDS instance for database storage and Implement AWS Secrets Manager to securely manage sensitive information (e.g., database credentials) used by the application.
### NOTE: For the application to work properly, it must work with the Database, so this section was done in items 1.2. and 1.3.

## 4- Scaling and Auto-Healing:

## 4.1.  Implementing Horizontal Pod Autoscaling (HPA) for one or more components of your sample application.
## 4.1.1. Creating the HorizontalPodAutoscaler
For a more detailed explanation, you can review my article in the link, [Diving into Kubernetes-1: Creating and Testing a Horizontal Pod Autoscaling (HPA) in Kubernetes Cluster](https://cmakkaya.medium.com/kubernetes-creating-and-testing-a-horizontal-pod-autoscaling-hpa-in-kubernetes-cluster-548f2378f0c3#ff68)
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/a4a5f23c-59ed-46ff-beeb-e38de98db6e6)

## 4.1.2. Installing Metric Server to The Cluster.
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/e02f7ae7-02e5-42ca-b402-7b472f4d202d)

![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/c749636e-cc9d-4119-827e-29446d32a0eb)

![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/275c801e-3b1f-4a53-a779-b90a458c0dba)

## 4.2. Configuring the Kubernetes cluster for automatic scaling based on resource utilization.

## 4.2.1. Deploying Cluster Autoscaler
* For a more detailed explanation, you can review [this documantation's link.](https://docs.aws.amazon.com/eks/latest/userguide/autoscaling.html) 
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/6a20350b-7612-4448-b63a-f66832970422)

## 4.2.2. Configuring Dynamic scaling policies via AWS Console
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/532d9d0f-84c0-49c0-9831-212e8cdcb961)

## 4.3. Multi-AZ Kubernetes Cluster for Reliability
It provides high availability by distributing the EKS cluster across multiple AWS Availability Zones (AZs), thus it increases "Reliability". 
#### Note: I did not apply this option during installation to reduce costs.

## 4.4. High Availability, Auto Scaling, Auto-Healing, and Failover for RDS DataBase
* Multi-AZ cluster for High Availability and failover. To get high availability and enhance availability during planned system maintenance, and help protect databases against DB instance failure and Availability Zone disruption.
* Point time recovery for AutoBackup, 
* ElastiCache cluster (to save up to 55% in cost and gain up to 80x faster read performance using ElastiCache with RDS for MySQL).
* Enabled Storage Auto Scaling
* Read replica to increase the scalability for high performance.  I did not implement this, However, I could use Read Replicas with Multi-AZ as part of a disaster recovery (DR) strategy for my production RDS database. Also, Read Replicas helps in decreasing load on the primary DB by serving read-only traffic.
#### NOTE: This section was done in items 1.3.

## 4.5. Caching for Microservice Applications by using Amazon CloudFront
#### Thus, it helps reduce the load on the originating server (the web server from which CloudFront retrieves the content) and improves content delivery performance. It also improves the usability of our website, providing higher usability.
#### We also protect against Distributed Denial of Service (DDoS) attacks that affect the availability of a website.
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/a4df16b8-f9a6-429e-b8fc-ed60bb6604c1)


## 5- Monitoring and Logging:

## 5.1. Integrate AWS CloudWatch for monitoring and logging of the Kubernetes cluster and the deployed application.
I can enable CloudWatch Observability in our clusters through the CloudWatch Observability add-on. After my cluster is created, navigate to the add-ons tab and install CloudWatch Observability add-on to enable CloudWatch Application Signals and Container Insights and start ingesting telemetry into CloudWatch.

## 5.1.1. Enabling Control plane logging 
```bash
eksctl utils update-cluster-logging --enable-types={ all } --region=us-east-1 --cluster=cumhur-eks-cluster
```
OR
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/27bbe9e2-bde8-4592-bd3a-9810d20bb686)

## 5.1.2.  Viewing cluster control plane logs
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/a325bd22-e2b0-4cd4-803b-641b9dfd30cd)

## 5.1.3. Setting up Container Insights on Amazon EKS and Kubernetes
## 5.1.3.1.  To attach the necessary policy to the IAM role for your worker nodes.
* Open the Amazon EC2 console at https://console.aws.amazon.com/ec2/.
* Select one of the worker node instances and choose the IAM role in the description.
* On the IAM role page, choose Attach policies.
* In the list of policies, select the check box next to CloudWatchAgentServerPolicy. If necessary, use the search box to find this policy.
* Choose Attach policies.
## 5.1.3.2.  To deploy Container Insights using the quick start, enter the following command.
```bash
ClusterName=cumhur-eks-cluster
RegionName=us-east-1
FluentBitHttpPort='2020'
FluentBitReadFromHead='Off'
[[ ${FluentBitReadFromHead} = 'On' ]] && FluentBitReadFromTail='Off'|| FluentBitReadFromTail='On'
[[ -z ${FluentBitHttpPort} ]] && FluentBitHttpServer='Off' || FluentBitHttpServer='On'
curl https://raw.githubusercontent.com/aws-samples/amazon-cloudwatch-container-insights/latest/k8s-deployment-manifest-templates/deployment-mode/daemonset/container-insights-monitoring/quickstart/cwagent-fluent-bit-quickstart-enhanced.yaml | sed 's/{{cluster_name}}/'${ClusterName}'/;s/{{region_name}}/'${RegionName}'/;s/{{http_server_toggle}}/"'${FluentBitHttpServer}'"/;s/{{http_server_port}}/"'${FluentBitHttpPort}'"/;s/{{read_from_head}}/"'${FluentBitReadFromHead}'"/;s/{{read_from_tail}}/"'${FluentBitReadFromTail}'"/' | kubectl apply -f - 
```

## 5.1.4.Set up the CloudWatch agent to collect cluster metrics (Set up alerts for critical events or performance thresholds.)

### 5.1.4.1. Create a namespace for CloudWatch: 
```bash
kubectl apply -f https://raw.githubusercontent.com/aws-samples/amazon-cloudwatch-container-insights/latest/k8s-deployment-manifest-templates/deployment-mode/daemonset/container-insights-monitoring/cloudwatch-namespace.yaml
```
###  5.1.4.2. Create a service account in the cluster:
```bash
kubectl apply -f https://raw.githubusercontent.com/aws-samples/amazon-cloudwatch-container-insights/latest/k8s-deployment-manifest-templates/deployment-mode/daemonset/container-insights-monitoring/cwagent/cwagent-serviceaccount.yaml
```
###  5.1.4.3. Create and Edit a ConfigMap for the CloudWatch agent:
```bash
curl -O https://raw.githubusercontent.com/aws-samples/amazon-cloudwatch-container-insights/latest/k8s-deployment-manifest-templates/deployment-mode/daemonset/container-insights-monitoring/cwagent/cwagent-configmap.yaml
kubectl apply -f cwagent-configmap.yaml
```
###  5.1.4.4. Deploy the CloudWatch agent as a DaemonSet:
```bash
kubectl apply -f https://raw.githubusercontent.com/aws-samples/amazon-cloudwatch-container-insights/latest/k8s-deployment-manifest-templates/deployment-mode/daemonset/container-insights-monitoring/cwagent/cwagent-daemonset.yaml
```

### 5.1.5. Creating an alert via Cloudwatch
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/dc93f7e4-bfc8-45dd-9284-ca884bc1fb8a)

-------------------------------------------------------------------------------------------------------------------------------------------------------

## 5.2. Creating an alert via Prometheus and Grafana

### 5.2.1. Deploying  Prometheus
```bash
kubectl create namespace prometheus

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm install prometheus prometheus-community/prometheus \
    --namespace prometheus \
    --set alertmanager.persistentVolume.storageClass="gp2" \
    --set server.persistentVolume.storageClass="gp2"
```
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/9d70859a-9450-4298-b31a-440b10e56dcc)

### 5.2.2. Deploying  Grafana
```bash
kubectl create namespace grafana

helm install grafana grafana/grafana \
    --namespace grafana \
    --set persistence.storageClassName="gp2" \
    --set persistence.enabled=true \
    --set adminPassword='Cumhur1234.?' \
    --values ${HOME}/environment/grafana/grafana.yaml \
    --set service.type=LoadBalancer
```
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/9de7cd74-1d5f-4a30-b6e5-81d6d4e179bc)

### 5.2.3. Setting Up An Alarm By Using the Grafana and Prometheus
For a more detailed explanation, you can review my article in the link, [Working with Microservices-18: Setting Up An Alarm By Using the Grafana Dashboard and Prometheus ConfigMap.yml](https://cmakkaya.medium.com/working-with-microservices-18-setting-up-an-alarm-by-using-the-grafana-dashboard-and-prometheus-a1c53671024d)
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/914ecc1b-f784-46ba-9662-bfb0031b31b7)

## 5.3. Alarm for The Nodes of Auto Scaling Groups.
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/7e6194fa-b773-4283-817a-86b5d1561c6b)

![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/96b2c81a-dbb7-4639-bc71-f4c73ba4c824)

## 6- Cleaning up
For installation with terraform:
```bash
terraform destroy --auto-approve
```
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/f3200631-f125-4fa4-a770-c4637c216ffd)

![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/6b1b9c34-d19f-4aaf-b66e-baedf5c07399)

![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/3f4261d6-015d-4807-b1be-76c3d18e889d)

-------------------------------------------------------------------------------------------------------------------------------------------------------

### If you liked the article, I would be happy if you click on the [Medium Following](https://cmakkaya.medium.com/) button to encourage me to write and not miss future articles.
### Your clap, follow, or subscribe, they help my articles to reach the broader audience. Thank you in advance for them.
### For more info and questions, don't hesitate to get in touch with me on [Linkedin](https://www.linkedin.com/in/cumhurakkaya/) or [Medium](https://cmakkaya.medium.com/).

-------------------------------------------------------------------------------------------------------------------------------------------------------
