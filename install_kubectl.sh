#!/bin/bash
# Instruction https://kubernetes.io/ru/docs/tasks/tools/install-kubectl/

# download stable version
curl -LO https://dl.k8s.io/release/`curl -LS https://dl.k8s.io/release/stable.txt`/bin/linux/amd64/kubectl

# executable binary
chmod +x ./kubectl

# make the kubectl binary easily accessible from anywhere in the terminal by moving it to a directory that is part of the system's PATH
sudo mv ./kubectl /usr/local/bin/kubectl

# check
kubectl version --client
