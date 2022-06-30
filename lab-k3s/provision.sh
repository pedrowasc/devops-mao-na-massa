curl -sfL https://get.k3s.io | sh -s -  --cluster-init --tls-san 192.168.0.2 --node-ip 192.168.0.2 --node-external-ip 192.168.0.2
yum install git unzip telnet net-tools -y 
git clone https://github.com/ahmetb/kubectx /opt/kubectx
#fazendo autocomplete dos comandos kubernets
ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
ls -s /opt/kubectx/kubens /usr/local/bin/kubens
yum install bash-completion -y
echo 'source <(kubectl completion bash)' >> ~/.bashrc
kubectl completion bash > /etc/bash_completion.d/kubectl
sudo cat <<EOT >> /etc/profile
alias k=kubectl
EOT
echo 'complete -F __start_kubectl k' >> ~/.bashrc

