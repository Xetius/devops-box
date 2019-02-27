Vagrant.configure(2) do |config|
	config.vm.provision "file", source: "files/.zshrc", destination: "~/.zshrc"
	config.vm.provision "file", source: "files/.vimrc", destination: "~/.vimrc"

	config.vm.define "devops-box" do |devbox|
		devbox.vm.box = "minimal/centos7"
		devbox.vm.provision "shell", path: "scripts/install.sh"
		devbox.vm.provider "virtualbox" do |v|
			v.memory = 2096
			v.cpus = 1
		end
	end

	config.vm.provision "file", source: "files/id_rsa", destination: "~/.ssh/id_rsa"
	config.vm.provision "file", source: "files/config", destination: "~/.ssh/config"
	config.vm.provision "file", source: "files/flattened_dark.vim", destination: "~/.vim/colors/flattened_dark.vim"
	config.vm.provision "file", source: "files/flattened_light.vim", destination: "~/.vim/colors/flattened_light.vim"
end
