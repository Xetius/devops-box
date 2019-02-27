Vagrant.configure(2) do |config|
	config.vm.provision "file", source: "files/.zshrc", destination: "~/.zshrc"
	config.vm.provision "file", source: "files/.vimrc", destination: "~/.vimrc"

	config.vm.define "devops-box" do |devbox|
		devbox.vm.box = "ubuntu/xenial64"
		devbox.vm.provision "shell", path: "scripts/install.sh"
		devbox.vm.provider "virtualbox" do |v|
			v.memory = 4096
			v.cpus = 2
		end
	end

	config.vm.provision "file", source: "files/id_rsa", destination: "~/.ssh/id_rsa"
	config.vm.provision "file", source: "files/config", destination: "~/.ssh/config"
	config.vm.provision "file", source: "files/flattened_dark.vim", destination: "~/.vim/colors/flattened_dark.vim"
	config.vm.provision "file", source: "files/flattened_light.vim", destination: "~/.vim/colors/flattened_light.vim"
	config.vm.synced_folder "/Users/chris/Projects/terraform-course", "/home/vagrant/src"
end
