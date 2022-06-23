#!/usr/bin/env bash
#instalacao do docker e docker swarm
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli cointainerd.io -y
sudo systemctl start docker 
duso systemctl enable docker
sudo curl -L "https://github.com/docker/compose/release/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

#instalacao jenkins
echo "Installing Jenkins and dependencies..."
yum install -y java-1.8.0-openjdk
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins
yum install epel-release -y
yum install wget

