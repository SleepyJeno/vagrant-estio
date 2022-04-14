# -*- mode: ruby -*-
# vi: set ft=ruby :
required_plugins = ["vagrant-hostsupdater"]
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end
Vagrant.configure("2") do |config|
  config.vm.define "deploy" do |deploy|
    deploy.vm.box = "ubuntu/focal64"
    config.ssh.insert_key = false
    deploy.vm.network :private_network, ip: "10.0.0.10"
    deploy.vm.hostname = "deploy"
    deploy.hostsupdater.aliases = ["deploy"]
  end
  config.vm.define "target" do |deploy|
    deploy.vm.box = "ubuntu/focal64"
    config.ssh.insert_key = false
    deploy.vm.network :private_network, ip: "10.0.0.20"
    deploy.vm.hostname = "target"
    deploy.hostsupdater.aliases = ["target"]
  end
end