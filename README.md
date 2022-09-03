[![CircleCI](https://dl.circleci.com/status-badge/img/gh/tltang/project-ml-microservice-kubernetes/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/tltang/project-ml-microservice-kubernetes/tree/master)

## Project Overview
This project includes using an Amazon Cloud9 to 
 * create circleci yml file
 * create a docker image and deploy it
 * install local kubernetes and minikube on the cloud9 
 * deploy the docker image to the local kubernetes
 * allow the python application to interact with kubernetes pods
 * lastly, making sure the circleci workflow run successfully and generate a badge on the github repository

### To run the app

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

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
