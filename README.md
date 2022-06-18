## Cloud DevOps ND - C4- Microservices at Scale using AWS & Kubernetes<br/>

Summary:<br/>
The python app as part of this project is a pre-trained sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on.<br/>
Given a sample data containing certain location parameters for Boston, it predicts price of house for the same.<br/>

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/amandeepsinghahuja/DevOps_Microservices/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/amandeepsinghahuja/DevOps_Microservices/tree/master)

#Steps to Run Project<br/>

1. Clone Repository<br/>

2. Create and Activate Environment:<br/>
   #Run following commands:<br/>
   python3 -m venv ~/.devops<br/>
   source ~/.devops/bin/activate<br/>

3. Installing python project dependencies via project Makefile ( requirements.txt include package requirements ):<br/>
   #Run following command<br/>
   make install<br/>

4. Install Docker:<br/>
   Follow instructions on https://docs.docker.com/get-docker/<br/>

5. Install Hadolint:<br/>
   #Run following commands for Linux:<br/>
   sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64<br/>
   sudo chmod +x /bin/hadolint<br/>
   
6. Install Minikube:<br/>
   Follow relevant instructions on https://minikube.sigs.k8s.io/docs/start/<br/>

7. Install Kubectl:<br/>
   #Run following commands for Linux:<br/>
   curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl<br/>
   chmod +x ./kubectl<br/>
   sudo mv ./kubectl /usr/local/bin/kubectl<br/>
   
8. Run Script 'run_docker.sh' to build docker image and run a local Docker container:<br/>
   ./run_docker.sh

9. Run Script 'upload_docker.sh' to push buit docker image to docker hub:<br/>
   ./upload_docker.sh<br/>
	
10. Run Script 'run_kubernetes.sh' to run a kubernetes deployment using the docker hub image from step 9<br/>
	./run_kubernetes.sh

11. Run Script 'make_prediction.sh' to run a sample prediction<br/>
    ./make_prediction.sh<br/>

#Optional<br/>
#CircleCI Integration<br/>
Refer to the .circleci/config.yaml file to integrate and build the project using CircleCI.<br/>
