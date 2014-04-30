Vagrant.configure("2") do |config|

  config.vm.box = "precise64"
  config.omnibus.chef_version = :latest
  config.vm.network :forwarded_port, guest: 80, host: 8888
  
  config.vm.provision :chef_client do |chef|
    chef.provisioning_path = "/etc/chef"
    chef.chef_server_url = "https://api.opscode.com/organizations/aziz1967"
    chef.validation_key_path = ".chef/aziz1967-validator.pem"
    chef.validation_client_name = "aziz1967-validator"
    chef.node_name = "lamp_server"
  end

end
