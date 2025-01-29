#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Update and upgrade the system
echo "Updating and upgrading the system..."
sudo apt update && sudo apt upgrade -y

# Install curl if not already installed
echo "Installing curl..."
sudo apt install curl -y

# Download and install Ollama
echo "Installing Ollama..."
curl -sSfL https://ollama.com/download.sh | sh

# Start and enable the Ollama service
echo "Starting and enabling the Ollama service..."
sudo systemctl start ollama
sudo systemctl enable ollama

# Wait for a few seconds to ensure the service is up
echo "Waiting for the Ollama service to start..."
sleep 5

# Pull the DeepSeek-R1 model (replace with the correct model name if necessary)
echo "Pulling the DeepSeek-R1 model..."
ollama pull deepseek-r1

# Instructions for running the model
echo "DeepSeek-R1 model has been pulled. You can run it using:"
echo "ollama run deepseek-r1"
echo "If the model name is incorrect, please verify the correct name using 'ollama list'."
echo "For more information, visit: https://ollama.com/models"
