#!/bin/bash

kubectl create -f configs/rethinkdb/rethinkdb-quickstart.yml --validate=false

eval $(minikube docker-env)
