#/bin/sh
sudo usermod -aG wheel vagrant
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config;
sudo systemctl restart sshd
sudo cat <<EOT >> /etc/sudoers
vagrant ALL=(ALL:ALL)  NOPASSWD:ALL
EOT

#Comando para liberar acesso ssh sem senha caso algum erro.
# cd ~/.ssh/
# cat id_dsa.pub >> authorized_keys
# chmod 644 authorized_keys
#cat <<EOT >> /home/vagrant/.ssh/authorized_keys 
#ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC730pSsWBCIclSlf4GoToBBh4KqtP8reif+yOlrAq9udQ5UN6ncKP4nyrzWkJ1mmX5DKwxMkwT5ZraxUCWkrvlT5XJlnU0+7Lr0OSy6E0HeiIucQxzSn958B1lC5WSBTTDZSIO3msj3K/46WIn0KyaYFv1WpgeUO2WZMMr0hDeoThMYOHGvJwRzuoVeTQiOF/rpsOM2nnkBNI8OlxQ70q9ZE0ohSqcEC4r/GL55inwMQtw3MfJIJ0D32f9rIecQbB70lsUBT+piaPIwWQsvw+CeeNVrZEGWP324qR+Ni0eUmIrvIJ/3HNqE0EAWiKxcN9l+Or/SzdiFKyjzaTRPtY/ vagrant@control-node 
#EOT
