#/bin/sh
sudo usermod -aG wheel vagrant
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config;
sudo systemctl restart sshd
sudo cat <<EOT >> /etc/sudoers
vagrant ALL=(ALL:ALL)  NOPASSWD:ALL
EOT

