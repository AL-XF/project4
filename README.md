[![CircleCI](https://circleci.com/gh/AL-XF/project4.svg?style=svg)](https://circleci.com/gh/AL-XF/project4)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---
## Summary of the project
This project is deploying a python web API to local, Docker, and Kubernetes. During the deployment process, setup liniting system to make sure the deployment code without any error. At the end, setup CircleCI to guarantee all codes in the github repository have been tested automatically.

## Setup the Environment 
This project is running on Ubuntu
To prepare the enviroment:
1. Install Python3.7 and python3-venv by running `sudo apt install python3.7` and `sudo apt install python3-venv`
2. Create an Python 3 vitural environment and activate it.  `python3 -m venv ~/.devops` and `source ~/.devops/bin/activate`
3. Install python3-pip which is the prerequisites for make install `sudo apt install python3-pip`
4. Run `make install` to install these dependcies.
5. Install Docker follow Docker guide. [Ref.](https://docs.docker.com/v17.12/install/linux/docker-ce/ubuntu/#install-docker-ce).
6. Install STACK for Hadolint installation. `curl -sSL https://get.haskellstack.org/ | sh` And, set the stack directory to PATH
7. Install Hadolint. `git clone https://github.com/hadolint/hadolint`, `cd hadolint`, and `sudo stack install`
8. Install Minikube. Download the minikube deb package, and install it by GUI.


### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `sudo ./run_docker.sh`
3. Run in Kubernetes:  `sudo ./run_kubernetes.sh`, this step need to run twice to make sure the port is forwarding.

### Testing `app.py`

* Open a new terminal and run `./make_prediction.sh`, it should return port number with the prediction result.

### Kubernetes Steps

1. Start Minikube by `sudo minikube start`
2. Make sure Kubernetes is running by run `sudo kubectl config view`
3. Create and run an app on Kubernetes by run `sudo ./run_kubernetes.sh`
4. Delete the app by run `sudo kubectl delete deploy/project4`

## Files in the repository

* requirements.txt - contain a list of python libraries require for the application
* Makefile - Makefile for container installation & file lint
* Dockerfile - Docker file for preparing necessary dependencies, port exposing, and run applcation
* app.py - python application file
* make_prediction.sh - script for connecting application to get the result
* run_docker.sh - script for deploying the application to a docker container
* run_kubernetes.sh - script for getting docker hub container and deploying to Kubernetes
* upload_docker.sh - script for uploading the local docker image to Docker Hub
* docker_out.txt - docker result copy
* kubernetes.out.txt - kubernetes result copy
