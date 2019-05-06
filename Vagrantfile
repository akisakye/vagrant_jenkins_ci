# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "geerlingguy/centos7"
  config.vm.hostname = "ci-server.local"
  config.vm.define "ci-server"
  config.vm.network "private_network", ip: "192.168.53.10"

  # making sure we are running latest puppet
  config.vm.provision "shell", path: "scripts/script.sh"

  # puppet modules
  config.vm.provision :shell do |shell|
    shell.inline = "puppet module install gutocarvalho-jenkins --version 1.0.0;"
  end

  # puppet provisioner
  config.vm.provision "puppet" do |puppet|
    puppet.manifest_file = "ci-server.pp"
    #puppet.options = "--verbose --debug"
  end

  # upload the tests
  config.vm.provision "file", source: "tests/tests.rb", destination: "/tmp/tests.rb"

  # run the tests
  config.vm.provision "shell", path: "tests/tests.sh"

  # Build Completion announce
  config.vm.provision "shell", path: "scripts/announce.sh"
end
