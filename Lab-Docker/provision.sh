#/bin/bash
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