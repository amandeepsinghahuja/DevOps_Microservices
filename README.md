## Cloud DevOps ND - C4- Microservices at Scale using AWS & Kubernetes

##Project Submission - Amandeep Singh Ahuja
Summary:
The python app as part of this project is a pre-trained sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on.
Given a sample data containing certain location parameters for Boston, it predicts price of house for the same.

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/amandeepsinghahuja/DevOps_Microservices/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/amandeepsinghahuja/DevOps_Microservices/tree/master)

#Steps to Run Project

1. Clone Repository

2. Create and Activate Environment:
   #Run following commands:
   python3 -m venv ~/.devops
   source ~/.devops/bin/activate

3. Installing python project dependencies via project Makefile ( requirements.txt include package requirements ):
   #Run following command	
   make install

4. Install Docker:
   Follow instructions on https://docs.docker.com/get-docker/

5. Install Hadolint:
   #Run following commands for Linux:
   sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64
   sudo chmod +x /bin/hadolint
   
6. Install Minikube:
   Follow relevant instructions on https://minikube.sigs.k8s.io/docs/start/

7. Install Kubectl:
   #Run following commands for Linux:
   curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
   chmod +x ./kubectl
   sudo mv ./kubectl /usr/local/bin/kubectl
   
8. Run Script 'run_docker.sh' to build docker image and run a local Docker container:
   ./run_docker.sh

9. Run Script 'upload_docker.sh' to push buit docker image to docker hub:
   ./upload_docker.sh
   
10. Run Script 'run_kubernetes.sh' to run a kubernetes deployment using the docker hub image from step 9

11. Run Script 'make_prediction.sh' to run a sample prediction.

#Optional
#CircleCI Integration
Refer to the .circleci/config.yaml file to integrate and build the project using CircleCI.
