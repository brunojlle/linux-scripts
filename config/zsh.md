# Tutorial: Installing and Configuring Zsh and Plugins on Linux

This guide shows how to install Zsh, set it as the default shell, and install useful plugins.

## 1. Install Zsh
```bash
sudo apt update && sudo apt install -y zsh
```

## 2. Check the installed version
```bash
zsh --version
```

## 3. Set Zsh as the default shell
```bash
chsh -s $(which zsh)
```

## 4. Install Oh My Zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## 5. Install the zsh-autosuggestions plugin
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

## 6. Install the zsh-syntax-highlighting plugin
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

## 7. Add the plugins to the `.zshrc` file
```bash
sed -i '/^plugins=(/ s/)/ zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc
```

## 8. Initialize Anaconda in Zsh
```bash
source /home/bruno/anaconda3/bin/activate
conda init zsh
```

## 9. Reload the Zsh configuration
```bash
source ~/.zshrc
```

## 10. Done!
Restart the terminal or run `zsh` to start using Zsh with the plugins and Anaconda configured.
