#!/bin/bash

# Update the system packages
echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y

# Install dependencies
echo "Installing required dependencies..."
sudo apt install -y curl wget bzip2

# Download the latest Anaconda installer
echo "Downloading the Anaconda installer..."
ANACONDA_URL="https://repo.anaconda.com/archive/Anaconda3-2024.10-1-Linux-x86_64.sh"
wget $ANACONDA_URL -O anaconda.sh

# Verify the integrity of the installer (optional, recommended)
echo "Verifying the installer integrity..."
sha256sum anaconda.sh

# Run the Anaconda installer
echo "Running the Anaconda installer..."
bash anaconda.sh -b -p $HOME/anaconda3

# Remove the installer file after installation
echo "Cleaning up installer file..."
rm -f anaconda.sh

# Initialize Anaconda in the shell
echo "Initializing Anaconda..."
eval "$($HOME/anaconda3/bin/conda shell.bash hook)"
conda init

# Activate changes in the shell configuration
echo "Reloading shell configuration..."
source ~/.bashrc

# Update Anaconda to the latest version
echo "Updating Anaconda packages..."
conda update -y conda
conda update -y --all

# Display the installed Anaconda version
echo "Installed Anaconda version:"
conda --version

# Display setup completion message
echo "Anaconda installation and setup completed successfully!"
echo "You can now create and manage Python environments using Conda."
