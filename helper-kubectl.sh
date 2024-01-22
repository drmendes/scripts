#!/bin/bash

# Set up kubectl autocompletion
echo "Setting up kubectl autocompletion..."
source <(kubectl completion bash)
echo "source <(kubectl completion bash)" >> ~/.bashrc

# Set up aliases
echo "Setting up aliases..."
echo "alias k='kubectl'" >> ~/.bashrc
echo "complete -o default -F __start_kubectl k" >> ~/.bashrc
echo "alias kns='kubectl config set-context --current --namespace '" >> ~/.bashrc
source ~/.bashrc

echo "Configuration completed."
