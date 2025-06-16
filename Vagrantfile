Vagrant.configure("2") do |config|
  master_private_ip = "192.168.56.101"
  worker_private_ip = "192.168.56.102"
  config.vm.define "master" do |master|
    master.vm.box = "ubuntu/focal64"
    master.vm.hostname = "master"
    master.vm.network "private_network", ip: master_private_ip

    master.vm.provider "virtualbox" do |vb|
      vb.memory = "4096"
      vb.cpus = "4"
    end

    master.vm.provision "shell", path: "ssh_password_yes.sh"
    # master.vm.provision "shell", path: "setup_gateway.sh"

    # master.vm.provision "shell", path: "setup.sh"
    # master.vm.provision "shell", path: "install_rke2.sh"

    # master.vm.provision "shell", path: "kubectl_config.sh"
    # master.vm.provision "shell", path: "install_k9s.sh"
    # master.vm.provision "shell", path: "install_helm.sh"
    # master.vm.provision "shell", path: "install_cert_manager.sh"
    # master.vm.provision "shell", path: "rancher_start.sh", args: [master_private_ip]
  end

  config.vm.define "worker" do |worker|
    worker.vm.box = "ubuntu/focal64"
    worker.vm.hostname = "worker"
    worker.vm.network "private_network", ip: worker_private_ip

    worker.vm.provider "virtualbox" do |vb|
      vb.memory = "4096"
      vb.cpus = "4"
    end

    worker.vm.provision "shell", path: "ssh_password_yes.sh"
    # worker.vm.provision "shell", path: "setup_gateway.sh"
    # worker.vm.provision "shell", path: "install_rke2_worker.sh", args: [master_private_ip]
  end
end
