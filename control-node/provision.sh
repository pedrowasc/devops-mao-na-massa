#/bin/sh
sudo yum -y install epel-release
echo "instalando ansible de teste"
sudo yum -y install ansible

cat <<EOT >> /etc/hosts
192.168.10.2 control-node
192.186.10.3 app01
192.168.10.4 db01
EOT

sudo usermod -aG wheel vagrant

sudo cat <<EOT >> /etc/sudoers
vagrant ALL=(ALL:ALL)  NOPASSWD:ALL
EOT

#Adicionar chave para não pedir senha no ssh
#ssh-keygen
#ssh-copy-id vagrant@192.168.10.3
#ssh-copy-id vagrant@192.168.10.4

#Caso não funcione executar esses dois comandos.
# scp ~/.ssh/id_dsa.pub vagrant@db01:/home/vagrant/.ssh/
# scp ~/.ssh/id_dsa.pub vagrant@app01:/home/vagrant/.ssh/
