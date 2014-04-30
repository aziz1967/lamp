# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "aziz1967"
client_key               "#{current_dir}/aziz1967.pem"
validation_client_name   "aziz1967-validator"
validation_key           "#{current_dir}/aziz1967-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/aziz1967"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]

cookbook_copyright "Aziz Ahmad Afandi"
cookbook_license "apachev2"
cookbook_email "aziz1967@gmail.com"
