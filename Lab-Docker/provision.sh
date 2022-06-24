#/bin/bash
#instalacao do docker e docker swarm
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli cointainerd.io -y
sudo systemctl start docker 
duso systemctl enable docker
sudo curl -L "https://github.com/docker/compose/release/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

#instalação do jenkins
sudo usermod -aG wheel vagrant
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config;
sudo systemctl restart sshd
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli conatinerd.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo cp /vagrant/application.properties /root/
sudo cp /vagrant/easy-note.jar /root/
sudo cp /vagrant/Dockerfile /root/
#vagrant upload aplication.properies /tmp/
#vagrant upload  easy-notes-1.0.0.jar /tmp/easy-note.jar
#sudo cp /vagrant/application.properties /root/
#sudo cp /vagrant/easy-note.jar /root