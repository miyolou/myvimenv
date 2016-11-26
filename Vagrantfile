Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.provision "shell", path: "script.sh"

  config.vm.provider :virtualbox do |myVB|
	myVB.memory = 2048 
  end
end

