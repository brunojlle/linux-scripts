# Tutorial: Installing and Configuring Anaconda on Linux

This guide shows how to install and configure Anaconda on Linux.

## 1. Update system packages
Open the terminal and run:
```bash
sudo apt update && sudo apt upgrade -y
```

## 2. Install required dependencies
```bash
sudo apt install -y curl wget bzip2
```

## 3. Download the Anaconda installer
```bash
wget https://repo.anaconda.com/archive/Anaconda3-2024.10-1-Linux-x86_64.sh -O anaconda.sh
```

## 4. (Optional) Verify the installer integrity
```bash
sha256sum anaconda.sh
```

## 5. Run the Anaconda installer
```bash
bash anaconda.sh -b -p $HOME/anaconda3
```

## 6. Remove the installer after installation
```bash
rm -f anaconda.sh
```

## 7. Initialize Anaconda in the shell
```bash
eval "$($HOME/anaconda3/bin/conda shell.bash hook)"
conda init
```

## 8. Reload the shell configuration
```bash
source ~/.bashrc
```

## 9. Update Anaconda
```bash
conda update -y conda
conda update -y --all
```

## 10. Check the installed version
```bash
conda --version
```

## 11. Done!
Anaconda is installed and ready to use. You can create and manage Python environments using Conda.
