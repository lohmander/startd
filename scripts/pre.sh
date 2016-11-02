#!/bin/bash

function install_mac {
	curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.12.2/minikube-darwin-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
}

function install_linux {
	curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.12.2/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
}

if [ "$(uname)" == "Darwin" ]; then
    echo "Installing prerequisites for MacOS."
	install_mac
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo "Installing prerequisites for Linux."
    install_linux
else
    echo "Failed to detect OS."
fi


