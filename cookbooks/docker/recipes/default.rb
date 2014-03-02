#
# Cookbook Name:: docker
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'vim'
package 'git'

apt_repository 'docker' do
  uri 'https://get.docker.io/ubuntu docker'
  components ["main"]
  keyserver 'keyserver.ubuntu.com'
  key '36A1D7869245C8950F966E92D8576A8BA88D21E9'
  notifies :run, 'execute[apt-get update]', :immediately
end

package 'linux-image-extra-' << `uname -r`
package 'lxc'
package 'curl'
package 'xz-utils'
package 'lxc-docker'
