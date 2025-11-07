# Tutorial: Configuring GitHub SSH on Linux

This tutorial shows how to set up SSH authentication with GitHub on Linux, allowing you to clone, pull, and push repositories without entering your username or password.

## 1. Check for existing SSH keys
Open the terminal and run:
```bash
ls -al ~/.ssh
```
Look for files like `id_rsa.pub` or `id_ed25519.pub`. If you already have a key, you can use it or create a new one.

## 2. Generate a new SSH key
Run the command below, replacing `your_email@example.com` with your GitHub email:
```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```
If your system does not support ed25519, use:
```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
Press Enter to accept the default location (`~/.ssh/id_ed25519`) and set a passphrase if you wish.

## 3. Add the key to the ssh-agent
Start the ssh-agent:
```bash
eval "$(ssh-agent -s)"
```
Add your private key to the agent:
```bash
ssh-add ~/.ssh/id_ed25519
```

## 4. Add the public key to GitHub
Copy the contents of your public key:
```bash
cat ~/.ssh/id_ed25519.pub
```
Go to [GitHub SSH settings](https://github.com/settings/keys), click "New SSH key", paste the contents, and save.

## 5. Test the SSH connection
Run:
```bash
ssh -T git@github.com
```
If you see a welcome message, everything is set up!

## 6. Using SSH to clone repositories
Example:
```bash
git clone git@github.com:username/repository.git
```

## Tips
- Keep your private key secure.
- You can add multiple SSH keys to GitHub.
- For more details, see the [official GitHub documentation](https://docs.github.com/en/authentication/connecting-to-github-with-ssh).
