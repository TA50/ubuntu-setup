# Programs

Contains programs that I need.

## Essential Programs

### zsh and oh-my-zsh

use apt to install zsh :

```bash
sudo apt install zsh
```

then install oh-my-zsh:
First download the install script:

```bash
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -o install.sh
```

then run the script.

or you can directly run the script with curl:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

or with wget:

```bash
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

I have already downloaded the script you can find it in the `scripts` folder `oh-my-zsh.sh`.

after that grap the .zshrc file from this repository and replace it with the one in your home directory.

To install themes and plugins clone oh-my-zsh repository (if not already clonned by the installation script) and copy the themes and plugins to the respective directories.

```bash
git clone https://github.com/ohmyzsh/ohmyzsh.git
```

some custom plugins. you should clone them to the `~/.oh-my-zsh/custom/plugins` directory.

-   zsh-autosuggestions
-   zsh-syntax-highlighting
-   zsh-completions
-   zsh-history-substring-search

```bash

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions.git ~/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-history-substring-search.git ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search


```

### tabby terminal

download the .deb file from the official website and install it with apt

[Tabby releases](https://github.com/Eugeny/tabby/releases/latest)

```bash
sudo apt install <deb file>
```

### git

```bash
sudo apt install git
```

set your username and email:

```bash
git config --global user.name "Awad Osman"
git config --global user.email "awadosman997@gmail.com"
```

### docker and docker-compose

**Docker Engine**

```bash
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```

```bash
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

verify installation:

```bash
sudo docker run hello-world
```

**Manage Docker as a non-root user**

1. add the docker group if it doesn't exist
2. add your user to the docker group
3. revalidate group membership

```bash
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
```

finally you can start the docker service:

```bash
sudo service docker start
```

### nvm

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
```

### anaconda

better to install mini-conda
download the installation script from the official website:

```bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
```

and simply run it:

```bash
bash Miniconda3-latest-Linux-x86_64.sh
```

or just do both in one command with wget:

```bash
sh -c "$(wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O -)"
```

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

## latex

install texlive

## Command Line Tools

### neofetch

```bash
sudo apt install neofetch
```

### htop

```bash
sudo apt install htop
```

