#/bin/bash
sudo yum -y update \
     yum -y upgrade \
     yum -y clean

sudo yum install -y curl
curl -fsSL https://get.docker.com | bash

sudo yum install docker-ce docker-ce-cli containerd.io -y
sudo yum install docker-compose-plugin -y

sudo usermod -aG docker vagrant

sudo systemctl start docker
sudo systemctl enable docker 

# Download e Instalação do Trivy Scaner
curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sh -s -- -b /usr/local/bin v0.18.3

