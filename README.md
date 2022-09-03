[![CircleCI](https://dl.circleci.com/status-badge/img/gh/tltang/project-ml-microservice-kubernetes/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/tltang/project-ml-microservice-kubernetes/tree/master)

## Project Overview
This project includes using an Amazon Cloud9 to 
 * create circleci yml file
 * create a docker image and deploy it
 * install local kubernetes and minikube on the cloud9 
 * deploy the docker image to the local kubernetes
 * allow the python application to interact with kubernetes pods
 * lastly, making sure the circleci workflow run successfully and generate a badge on the github repository


### To setup the kubernetes locally on Cloud9
 *  download the kuectl curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
 *  chmod +x ./kubectl
 *  sudo mv ./kubectl /usr/local/bin/kubectl
 *  Test the version: kubectl version --client
 *  download minikube curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
 *  chmod +x minikube
 *  sudo mv minikube /usr/local/bin/
 *  Test the version: minikube version
 *  To install the conntrack
 *  sudo yum install conntrack
 *  To install the socat
 *  sudo yum makecache --refresh
 *  sudo yum -y install socat.x86_64

### To start the minikube
 *  sudo -i
 *  minikube start --driver=none
 *  check the status
 *  minikube status
           
### To run the app

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
    ### Detailed Steps listed below
    #### Create the app in the docker
     * First you need to build the image
     * I first use run_docker.sh, but skip the step 3, because I need to upload the image before I can run the app using step 3
     * after the image is built, run upload_docker.sh
     * check the docker hub to make sure the image is uploaded
     * run_docker.sh again, this time include step 3 to start the app
     * open a second Terminal, from there run the script make_prediction.sh, this will call the app from the docker and return the json data
     
3. Run in Kubernetes:  `./run_kubernetes.sh`
    ### Once the minikue, kubectl is installed as above, and minikube started as above, do the following


### Repository Files

* .circleci/config.yml:   the circleci job and workflow setup
* app.py:                 the python app, provided by udacity
* docker_out.txt:         screen output when run the app from docker
* kubernetes_out.txt:     screen output when run the app via kubernetes
* Dockerfile:             Docker Image setup script
* make_prediction.sh:     shell script to call the app (app.py), and returns the json predication output
* Makefile:               the work environment setup script
* requirements.txt:       dependencies, installed by calling make install
* run_docker.sh:          script to run the app from docker
* run_kubernetes.sh:      script to run the app via kubernetes
* upload_docker.sh:       script to deploy the docker image
