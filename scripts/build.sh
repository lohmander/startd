#!/bin/bash

(
    cd services/app
    eval $(minikube docker-env)
    docker build -t startd-app .
)
