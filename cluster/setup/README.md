pipx install ansible-core==2.16.5

ansible-galaxy install -r requirements.yml

pipx inject ansible-core distlib 

ansible-playbook -i inventories/mycluster/inventory.yml --become kubespray-playbook.yml

kubectl --kubeconfig ~/.kube/config --insecure-skip-tls-verify=true get nodes
