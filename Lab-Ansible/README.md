# devops-mao-na-massa

# Levantar maquinas app01 e db01
# Levantar Control-node (Servidor Ansible)

# Dentro do Control node Adicionar chave para não pedir senha no ssh
# ssh-keygen
# ssh-copy-id vagrant@192.168.10.3
# ssh-copy-id vagrant@192.168.10.4

# Dentro de APP01 e DB01 Comando para liberar acesso ssh sem senha caso algum erro.
# cd ~/.ssh/
# cat id_dsa.pub >> authorized_keys
# chmod 644 authorized_keys

# Insalar galaxy do ansible( ansible-galaxy install geerlingguy.mysql)
# Rodar playbook db.yaml para instalar mysql

.