#!/bin/bash

# Update package lists and install Zsh
echo "Installing Zsh..."
sudo apt update && sudo apt install -y zsh

# Check the installed version of Zsh
echo "Installed Zsh version:"
zsh --version

# Change the default shell to Zsh
echo "Changing the default shell to Zsh..."
chsh -s $(which zsh)

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Clone the zsh-autosuggestions plugin repository
echo "Cloning the zsh-autosuggestions plugin..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Clone the zsh-syntax-highlighting plugin repository
echo "Cloning the zsh-syntax-highlighting plugin..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Add the plugins to the .zshrc file
echo "Adding plugins to .zshrc..."
sed -i '/^plugins=(/ s/)/ zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc

# Run Anaconda initialization directly in the terminal
echo "Activating Anaconda and initializing Conda for Zsh..."
source /home/bruno/anaconda3/bin/activate
conda init zsh

# Reload the Zsh configuration
echo "Reloading Zsh configuration..."
source ~/.zshrc

# Display completion message
echo "Setup completed! Restart the terminal or run 'zsh' to start using Zsh with the installed plugins and Anaconda."
