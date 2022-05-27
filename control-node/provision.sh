#/bin/sh
sudo yum -y install epel-release
echo "instalando ansible de teste"
ssh-keygen
ssh-copy-id vagrant@192.168.0.2
ssh-copy-id vagrant@192.168.0.4
sudo yum -y install ansible
cat <<EOT >> /etc/hosts
192.168.1.2 control-node
192.186.1.3 app01
192.168.1.4 db01
EOT
