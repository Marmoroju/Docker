Vagrant.configure("2") do |config|
    config.vm.box = "centos/7"
    config.vm.network "private_network", ip: "192.168.56.2"
    config.vm.provision "shell", path: "provision.sh"
    config.vm.provider "virtualbox" do |v|
      v.name = "Docker_Trivy"
      v.memory = 1024
      v.cpus = 2
    end
  end