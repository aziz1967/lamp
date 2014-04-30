#
# Cookbook Name:: php
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
package 'php5' do
  action :install
end

package 'php5-mysql' do
  action :install
end

package 'php5-dev' do
  action :install
end

package 'php5-curl' do
  action :install
end

package 'php5-gd' do
  action :install
end

package 'php5-imagick' do
  action :install
end

package 'php5-mcrypt' do
  action :install
end

package 'php5-memcache' do
  action :install
end

package 'php5-mhash' do
  action :install
end

package 'php5-pspell' do
  action :install
end

package 'php5-snmp' do
  action :install
end

package 'php5-xmlrpc' do
  action :install
end

package 'php5-xsl' do
  action :install
end

package 'php5-cli' do
  action :install
end

package 'php-pear' do
  action :install
end

package 'libapache2-mod-php5' do
  action :install
end
