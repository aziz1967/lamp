#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, Aziz Ahmad Afandi
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
package 'apache2' do
  action :install
end

link "/var/www/src" do
  to "/vagrant/src"
end

cookbook_file "/etc/apache2/sites-available/default" do
  source "default"
  owner "root"
  group "root"
end

service "apache2" do
  supports :restart => true, :reload => true
  action [:enable, :start]
  subscribes :restart, "cookbook_file[/etc/apache2/sites-available/default]"
  subscribes :restart, "package[php5]"
  subscribes :restart, "package[php5-mysql]"
  subscribes :restart, "package[php5-dev]"
  subscribes :restart, "package[php5-curl]"
  subscribes :restart, "package[php5-gd]"
  subscribes :restart, "package[php5-imagick]"
  subscribes :restart, "package[php5-mcrypt]"
  subscribes :restart, "package[php5-memcache]"
  subscribes :restart, "package[php5-mhash]"
  subscribes :restart, "package[php5-pspell]"
  subscribes :restart, "package[php5-snmp]"
  subscribes :restart, "package[php5-xmlrpc]"
  subscribes :restart, "package[php5-xsl]"
  subscribes :restart, "package[php-pear]"
  subscribes :restart, "package[libapache2-mod-php5]"
end

execute "enabledmodrewrite" do
  command "/usr/sbin/a2enmod rewrite"
end
