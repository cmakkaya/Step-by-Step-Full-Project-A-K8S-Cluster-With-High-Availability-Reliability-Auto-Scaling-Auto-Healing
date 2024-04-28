## Hi there, <img src = "https://github.com/cmakkaya/cmakkaya/blob/main/wavehand.gif" width = "40" align="center"> Nice to see you. <img src="https://emojis.slackmojis.com/emojis/images/1531849430/4246/blob-sunglasses.gif?1531849430" width="40"/>

# Step by Step Full Project: A Kubernetes Cluster With High Availability, Reliability, Auto Scaling, Auto-Healing, and Monitoring.

## Creating A Kubernetes Cluster With High Availability, Reliability, Auto Scaling, Auto-Healing, and Monitoring On The Amazon EKS via Terrafom Or Cloudformation, And By Using GitOps Workflow (ArgoCD), Jenkins, Rancher, Amazon Elastic Kubernetes Service (EKS), VPC (with both public and private subnets) for Amazon EKS, RDS MySQL Database, AWS Secrets Manager, Amazon Route53, AWS Certificate Manager, CloudWatch, Prometheus and Grafana. We will do these practically step by step in this Readme.

### ⭐ Also, thank you for giving `stars` to my GitHub repository.

# Index of Steps
![image](https://github.com/cmakkaya/Step-by-Step-Full-Project-A-K8S-Cluster-With-High-Availability-Reliability-Auto-Scaling-Auto-Healing/assets/110052470/d37e96c8-27d3-4d30-a3d4-caa4a0c0abd8)

#### If you liked the article, I would be happy if you click on the [Medium Following](https://cmakkaya.medium.com/) button to encourage me to write and not miss future articles.
#### Your clap, follow, or subscribe, they help my articles to reach the broader audience. Thank you in advance for them.
#### For more info and questions, don't hesitate to get in touch with me on [Linkedin](https://www.linkedin.com/in/cumhurakkaya/) or [Medium](https://cmakkaya.medium.com/).

## 1- Kubernetes Deployment:

[1.1. Creating a VPC in AWS with both public and private subnets.](#11-creating-a-vpc-in-aws-with-both-public-and-private-subnets)

1.1.1. Creating VPC for Amazon Elastic Kubernetes Service (EKS) by Using Cloudformation 

1.1.2. Creating VPC for Amazon Elastic Kubernetes Service (EKS) by Using Terraform

[1.2. Deploying a Kubernetes cluster in AWS using EKS (Elastic Kubernetes Service) in the private subnet.](#12-deploying-a-kubernetes-cluster-in-aws-using-eks-elastic-kubernetes-service-in-the-private-subnet)

1.2.1. Firstly, create a role for Amazon EKS

1.2.2. Creating a Kubernetes cluster in Amazon EKS via eksctl

1.2.3. Creating a Kubernetes cluster in Amazon EKS via Rancher

1.2.4. Creating a Kubernetes cluster in Amazon EKS via Terrafom

[1.3. Deploying a sample microservices application of your choice into the Kubernetes cluster.](#13-deploying-a-sample-microservices-application-of-your-choice-into-the-kubernetes-cluster)

1.3.1. Creating RDS MySQL Database

1.3.2. Implementing AWS Secrets Manager to securely manage sensitive information.

1.3.4. Using AWS Secrets Manager's secret in RDS MySQL Database.

1.3.5. Setting RDS MySQL Database for High Availability and Reliability.

* Deployment options: Multi-AZ DB instance

* Instance and Storage configuration

* Storage Auto Scaling

* Automated backups

* To see The Amazon CloudWatch Logs

* Creating an ElastiCache cluster from RDS for read performance. 

1.3.6.  Connecting RDS MySQL Database to microservice application by modifying mysql-server-service.yaml file

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

[5.3. For ASG Nodes](#53-for-asg-nodes)

## 6- Documentation and GitOps Repository
[GitHub Repository address](#6--documentation-and-gitops-repository-1-1)

## 7- Cleaning up
[For installation with terraform](#7--cleaning-up-1)

----------------------------------------------------------------------------------------------------------------------


# 1- Kubernetes Deployment:

## 1.1. Creating a VPC in AWS with both public and private subnets.

### 1.1.1. Creating VPC for Amazon Elastic Kubernetes Service (EKS) by Using Cloudformation:
* The yaml installation file for Cloudformation is available in the GitHub repo.
* For a more detailed explanation, you can review [this documantation's link.](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/GettingStarted.html) 
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/bb12685f-ac5c-418d-ae9b-f042dc8b2dd3)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/91241539-3c1c-43e4-a2a0-beb53e4f7437)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/905ec25a-9647-40ea-9a95-28336345fb39)

### 1.1.2. Creating VPC for Amazon Elastic Kubernetes Service (EKS) by Using Terraform
* The terraform-vpc installation `.tf files` are available in the GitHub repo.
* For a more detailed explanation, you can review [this documantation's link.](https://developer.hashicorp.com/terraform/tutorials/aws-get-started) 
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/71d47c29-5dec-44bd-8f18-9cf4943e2c7d)
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
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/e5e4c54d-642e-43a9-87d8-868117a13e1d)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/3bec6f75-e758-42d8-9001-59b718581698)

### 1.2.2. Creating a Kubernetes cluster in Amazon EKS via eksctl
#### Use `cumhur-cluster.yaml` file in this repository. Don't forget to replace `private subnets ids` with yours.
For a more detailed explanation, you can review; [my article in the link](https://cmakkaya.medium.com/working-with-microservices-10-explanation-of-the-production-stage-and-creating-amazon-eks-cluster-f202558ca4fb#ed51)    
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/2fde3799-3d43-4265-897a-eac27e0c10df)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/c0f5c786-62f1-4194-93cc-3a40fd14d5dd)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/1d17fec9-9d89-4a23-ae68-bea0ce41ac64)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/9e0d999f-1f68-42d9-a3ef-c7e1ace4f250)

### 1.2.3. Creating a Kubernetes cluster in Amazon EKS via Rancher
#### If we want, we can also set up our Amazon EKS cluster with Rancher. 
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/fbd8ee67-0bd9-4f3f-9bfa-84fa97bc18af)
For a more detailed explanation, you can review my article in the link,
[Working with Microservices-6: Creating the Rancher server, Running Rancher in it, and Preparing Rancher to use in Jenkins Pipeline](https://cmakkaya.medium.com/working-with-microservices-6-creating-the-rancher-server-running-rancher-in-it-and-preparing-ee0e1bfdaf20) 
and
[Working with Microservices-8: Preparing the staging pipeline in Jenkins, and deploying the microservices app to the Kubernetes cluster using Rancher, Helm, Maven, Amazon ECR, and Amazon S3. Part-1](https://cmakkaya.medium.com/working-with-microservices-8-preparing-the-staging-pipeline-in-jenkins-and-deploying-the-a86cde2e2605)

## 1.2.4. Creating a Kubernetes cluster in Amazon EKS via Terraform
#### If we want, we can also set up our Amazon EKS cluster Terraform. Use `.tf files` in this repository.
* The terraform-eks installation .tf files are available in the GitHub repo.
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/c072ae40-a6df-43fd-b6b3-7ea4d2ef1a23)
* Also, the "terraform-eks" files will create a VPC for the AWS EKS cluster.
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/03a86c2b-d760-44bb-850a-a51c2f921860)
####  Goto "terraform-eks" folder and running following commands
```bash
terraform init
```
####  Apply the infrastructure:
```bash
terraform apply -var="cluster_name=eks-cumhur-cluster" -auto-approve
```
* The output of the terraform apply command:
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/f08ba178-4791-414d-9119-0523b36ad726)
* Controlling created EKS cluster via kubectl command:
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/853c9020-e3e8-4510-a951-c5740fe110ea)
* Controlling created EKS cluster in AWS  Console:
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/6c5b14ae-eae4-4538-a9ca-c5b4770fc902)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/3167136e-9b27-4b3f-9372-5c93b7153f8f)

## 1.3. Deploying a sample microservices application of your choice into the Kubernetes cluster. 

### 1.3.1. Creating RDS MySQL Database
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/e1f02825-fafd-4097-bbd0-cf5e68e2744c)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/1243208b-44e0-48af-bf17-31b1dd9fa314)
For a more detailed explanation, you can review my article in the link, [Working with Microservices-14: Creating Amazon RDS MySQL(8.0.31) database for the Kubernetes cluster in the Production stage.](https://cmakkaya.medium.com/working-with-microservices-14-creating-amazon-rds-mysql-database-for-kubernetes-cluster-in-the-5771a6208469)
### 1.3.2. Implementing AWS Secrets Manager to securely manage sensitive information.
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/28b07cc6-6dbd-403e-ad5d-40828167a2c2)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/baed0f68-4352-4703-a215-527202792294)

### 1.3.4. Using AWS Secrets Manager's secret in RDS MySQL Database.
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/aff19031-7508-4fe2-928f-6d35cd6ad450)

### 1.3.5. Setting RDS MySQL Database for High Availability and Reliability.
* Deployment options: Multi-AZ DB instance for High Availability and failover.
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/1c6a1e5c-dbac-4bc4-9739-89f440a0cf88)
* Instance and Storage configuration
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/6bb5bb3f-30c0-4d79-890a-dca82947b5ba)
* Enabled Storage Auto Scaling
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/cfd732ec-b291-4885-ab57-c717a740de40)
* Automated backups (Point time recovery)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/bf6325b2-cce4-4f33-b523-93d93a397bb6)
* For Amazon CloudWatch Logs
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/52d63ee3-393a-44b8-9c3d-b01d3e10c57d)
* Creating an ElastiCache cluster from RDS for read performance. In order to save up to 55% in cost and gain up to 80x faster read performance using ElastiCache with RDS for MySQL.
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/160445bd-feca-45c5-b7c8-b63026d287fc)

### 1.3.6.  Connecting RDS MySQL Database to microservice application by modifying mysql-server-service.yaml file
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/51d59ec6-934a-408b-91fb-ecd5f5be9ff9)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/fbea70ff-7634-4856-9b1b-a08f11eb9667)
* Testing DB connectivity
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/6048993a-e20b-45ce-a796-09e0ec8a4281)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/4dce3de6-382b-4494-9961-10537bb38726)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/6cb34ab8-e999-4a8d-a600-cf6cd75e7c63)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/45026146-e4ad-476a-a9e7-217632c5fd72)

## 1.4.  Deploying an application consisting of the 12 Microservices to the Amazon EKS Kubernetes cluster. 
### 1.4.1. Deploying Microservices app to EKS cluster via Jenkins Pipelines
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/b1735e04-8028-406e-aa99-f48f71d2c033)
For a more detailed explanation, you can review my article in the link, [Working with Microservices-9: Preparing the staging pipeline in Jenkins, and deploying the microservices app to the Kubernetes cluster using Rancher, Helm, Maven, Amazon ECR, and Amazon S3. Part-2](https://cmakkaya.medium.com/working-with-microservices-9-preparing-the-staging-pipeline-in-jenkins-and-deploying-the-270f4770a723)
### 1.4.2. DNS name
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/8219e9e5-7665-4878-a89a-2a6a4cebaea4)
For a more detailed explanation, you can review my article in the link, [Working with Microservices-12: Setting Domain Name and TLS certificate for Production Pipeline using Route 53, Let’s Encrypt and Cert Manager](https://medium.com/@cmakkaya/working-with-microservices-12-setting-domain-name-and-tls-certificate-for-production-pipeline-649aef11924d#bae6)
### 1.4.3. Running Deployment, Services, and Ingress
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/896a5f93-515f-45e9-8e77-cae78ab60fd3)
### 1.4.4. Controlling Microservices application via The Internet Browser
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/8126259d-790f-4050-94ec-f888514e084b)
### 1.4.5. SSL/TLS Certificate via Let's Encrypt and Cert Manager
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/c6b10dd4-aee3-4acb-b5b3-a076507d22f2)

## 1.5. Controlling and Modifying the Amazon EKS cluster via Rancher
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/d150ae46-26f4-42d6-8a49-ebdb6eca6975)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/5ba9a773-5728-4f99-8f23-3802fa497acc)


## 2- GitOps Workflow:
* For a more detailed explanation, you can review my article in the link, [Argo CD-1: Understanding, Installing, and Using Argo CD as a GitOps Continuous Delivery Tool](https://cmakkaya.medium.com/argo-cd-1-understanding-installing-and-using-argo-cd-as-a-gitops-continuous-delivery-tool-0ec0b4e00a77)
and
[Argo CD and GitHub Action-1: Running Together Them To Create The CI/CD Pipeline](https://medium.com/@cmakkaya/argo-cd-and-github-action-1-running-together-them-to-create-the-ci-cd-pipeline-6baeed39dde7)
### Implement a GitOps workflow using ArgoCD for managing the deployment of applications in the Kubernetes cluster.

## 2.1. Creating ArgoCD  
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/5b9be837-82bf-495d-9602-47ff9de0f92f)

## 2.2. TLS Certificate for ArgoCD via AWS Certificate Manager (ACM) 
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/73bd6ecb-d881-44df-87ae-ab6b5aa13f9d)

## 2.3. DNS Name for ArgoCD via  Amazon Route53  
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/dc823c0e-d271-41a1-bc31-fa9ea3b585c8)

## 2.4. Launching ArgoCD
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/c93b5b29-6464-4203-b699-dc38007359e5)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/6dc89dc1-8580-4551-bfb2-7d0561a7f84c)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/0e484f4e-5b8c-485a-aa13-de44a8a24c85)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/c66d6e66-dcf7-41e8-980f-b01610dd1772)

* For a more detailed explanation, you can review my article in the link, [Argo CD-1: Understanding, Installing, and Using Argo CD as a GitOps Continuous Delivery Tool](https://cmakkaya.medium.com/argo-cd-1-understanding-installing-and-using-argo-cd-as-a-gitops-continuous-delivery-tool-0ec0b4e00a77)
and
[Argo CD and GitHub Action-1: Running Together Them To Create The CI/CD Pipeline](https://medium.com/@cmakkaya/argo-cd-and-github-action-1-running-together-them-to-create-the-ci-cd-pipeline-6baeed39dde7)

## 2.5. Creating a Git repository to store Kubernetes manifests for your sample application.
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/89d3d09c-1b5a-4354-943d-e8488283ca67)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/201db230-9385-49a6-962d-b34ef03c98d6)

## 2.6. Configure the GitOps tool to continuously synchronize the state of the cluster with the desired state specified in the Git repository.
## 2.6.1. Connecting The Microservice Repositories
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/3fc2a5f3-4083-4bc6-90bd-bcde643557b8)

## 2.6.2. Creating a new app in ArgooCD for Microservice Applications
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/17939493-2281-47b8-af03-dae821a88e79)

## 2.6.3. Observing the operation and synchronization of the Microservice application on ArgoCD
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/3c90eb76-9cab-4208-a9c9-68a3c623837e)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/bfe23aa2-0f0a-4543-8ba8-d43440892b33)

## 3- AWS Integration:

### Integrate an Amazon RDS instance for database storage and Implement AWS Secrets Manager to securely manage sensitive information (e.g., database credentials) used by the application.
### NOTE: For the application to work properly, it must work with the Database, so this section was done in items 1.2. and 1.3.

## 4- Scaling and Auto-Healing:

## 4.1.  Implementing Horizontal Pod Autoscaling (HPA) for one or more components of your sample application.
## 4.1.1. Creating the HorizontalPodAutoscaler
For a more detailed explanation, you can review my article in the link, [Diving into Kubernetes-1: Creating and Testing a Horizontal Pod Autoscaling (HPA) in Kubernetes Cluster](https://cmakkaya.medium.com/kubernetes-creating-and-testing-a-horizontal-pod-autoscaling-hpa-in-kubernetes-cluster-548f2378f0c3#ff68)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/c66d6e66-dcf7-41e8-980f-b01610dd1772)

## 4.1.2. Installing Metric Server to The Cluster.
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/d39b5e82-fd5d-4c10-9074-8e3cc07768a2)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/1d3b01d9-2523-41f6-bc5f-5fbca6a631e1)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/3202a1e7-dcc8-4a38-a81d-43329854a914)

## 4.2. Configuring the Kubernetes cluster for automatic scaling based on resource utilization.

## 4.2.1. Deploying Cluster Autoscaler
* For a more detailed explanation, you can review [this documantation's link.](https://docs.aws.amazon.com/eks/latest/userguide/autoscaling.html) 
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/55eb399b-9901-487e-a2d5-6caa05f9c5cc)

## 4.2.2. Configuring Dynamic scaling policies via AWS Console
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/ef9a1506-8ef5-4729-8c60-1aee22b98978)

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
#### We also protect against Distributed Denial of Service – DDoS attacks that affect the availability of a website.
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/33a65f30-c388-46c7-be6c-abd924d78a5f)


## 5- Monitoring and Logging:

## 5.1. Integrate AWS CloudWatch for monitoring and logging of the Kubernetes cluster and the deployed application.
I can enable CloudWatch Observability in our clusters through the CloudWatch Observability add-on. After my cluster is created, navigate to the add-ons tab and install CloudWatch Observability add-on to enable CloudWatch Application Signals and Container Insights and start ingesting telemetry into CloudWatch.

## 5.1.1. Enabling Control plane logging 
```bash
eksctl utils update-cluster-logging --enable-types={ all } --region=us-east-1 --cluster=cumhur-eks-cluster
```
OR
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/3ae32531-3ff1-4c85-b99b-33edf69fbf43)

## 5.1.2.  Viewing cluster control plane logs
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/b8d1a096-81cc-452f-b236-51a3cc030b7d)

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
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/35489151-14c3-41cf-a08d-fe63f7c34f6a)

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
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/a121efd5-143c-47b4-ad95-038ebf06e52d)

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
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/e1ca6866-8c94-4e07-8214-de0c542c5302)

### 5.2.3. Setting Up An Alarm By Using the Grafana and Prometheus
For a more detailed explanation, you can review my article in the link, [Working with Microservices-18: Setting Up An Alarm By Using the Grafana Dashboard and Prometheus ConfigMap.yml](https://cmakkaya.medium.com/working-with-microservices-18-setting-up-an-alarm-by-using-the-grafana-dashboard-and-prometheus-a1c53671024d)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/b33ab804-95d5-4b25-8411-3da83891a805)

## 5.3. For ASG Nodes
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/1848dd15-4ceb-4b77-87f8-457ff140a20b)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/5d0a8194-d9e7-4591-8966-76f6e8adfbb7)

## 6- Documentation and GitOps Repository:
[GitHub Repository address](https://github.com/cmakkaya/cumhur-microservices-deploy)
#### Added comprehensive documentation on the entire setup, including steps for deploying the Kubernetes cluster, GitOps workflow, AWS integration, and monitoring/logging configuration.
#### Included a README.md file in your GitOps repository explaining the directory structure, how to contribute, and how the GitOps workflow operates.

## 7- Cleaning up
For installation with terraform:
```bash
terraform destroy --auto-approve
```
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/118acb8c-5d75-4614-898d-e2409dc0b4aa)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/d3e2ef28-84e0-4b16-b4d0-23cc55ac3038)
![image](https://github.com/cmakkaya/cumhur-microservices-deploy/assets/110052470/7db15b05-a990-4df8-aa96-81ffc517d179)


### If you liked the article, I would be happy if you click on the [Medium Following](https://cmakkaya.medium.com/) button to encourage me to write and not miss future articles.
### Your clap, follow, or subscribe, they help my articles to reach the broader audience. Thank you in advance for them.
### For more info and questions, don't hesitate to get in touch with me on [Linkedin](https://www.linkedin.com/in/cumhurakkaya/) or [Medium](https://cmakkaya.medium.com/).
