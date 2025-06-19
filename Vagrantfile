def set_vm_resources(vm, mem, cpu)
  vm.vm.provider "virtualbox" do |vb|
    vb.memory = mem
    vb.cpus = cpu
  end
end

def common_vm_setup(config, name, ip, mem, cpu)
  config.vm.define name do |vm|
    vm.vm.box = "ubuntu/focal64"
    vm.vm.hostname = name
    vm.vm.network "private_network", ip: ip

    set_vm_resources(vm, mem, cpu)

    vm.vm.provision "shell", path: "ssh_password_yes.sh"
  end
end

Vagrant.configure("2") do |config|
  options = {
    "master" => { ip: "192.168.56.101", mem: 2048, cpu: 2 },
    "worker" => { ip: "192.168.56.102", mem: 2048, cpu: 2 },
    "api"    => { ip: "192.168.56.105", mem: 1024, cpu: 1 }
  }
  # name: options의 키, opt: options의 값
  options.each do |name, opt|
    common_vm_setup(config, name, opt[:ip], opt[:mem], opt[:cpu])
  end
end
