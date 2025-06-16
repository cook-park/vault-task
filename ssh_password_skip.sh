remote_password="vagrant"
master_ip="192.168.56.101"
worker_ip="192.168.56.102"
ssh-keygen -f ~/.ssh/id_rsa -N ""

SSHPASS=$remote_password sshpass -e ssh-copy-id -i ~/.ssh/id_rsa.pub vagrant@$master_ip
SSHPASS=$remote_password sshpass -e ssh-copy-id -i ~/.ssh/id_rsa.pub vagrant@$worker_ip