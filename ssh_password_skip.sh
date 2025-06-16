remote_password="vagrant"
master_ip="192.168.56.101"
worker_ip="192.168.56.102"
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -N ""

SSHPASS=$remote_password sshpass -e ssh-copy-id -o StrictHostKeyChecking=no -i ~/.ssh/id_ed25519 vagrant@$master_ip
SSHPASS=$remote_password sshpass -e ssh-copy-id -o StrictHostKeyChecking=no -i ~/.ssh/id_ed25519 vagrant@$worker_ip