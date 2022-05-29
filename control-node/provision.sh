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

