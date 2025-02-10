# Programs 
Contains programs that I need.

## Essential Programs

### zsh and oh-my-zsh

### tabby terminal

### git

### docker and docker-compose

### nvm

### anaconda

### vscode

### sublime-text

### postman

### jetbrains-toolbox

### thunderbird

### firefox

### Forticlient VPN

### Telegram



### 1password and 1password-cli

To install 1password cli run the following commands:
```bash
curl -sS https://downloads.1password.com/linux/keys/1password.asc | \
sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg && \
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/$(dpkg --print-architecture) stable main" | \
sudo tee /etc/apt/sources.list.d/1password.list && \
sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/ && \
curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | \
sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol && \
sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22 && \
curl -sS https://downloads.1password.com/linux/keys/1password.asc | \
sudo gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg && \
sudo apt update && sudo apt install 1password-cli
```

This will add the 1password repository to your sources and install the 1password cli.

## Command Line Tools

### neofetch

### htop

### latex
install texlive 

