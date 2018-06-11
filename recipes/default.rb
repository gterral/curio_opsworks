#
# Cookbook:: curio_opsworks
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'ImageMagick' do
  action :install
end

# Needed for FrontEnd specs
package 'cairo-devel' do
  action :install
end

# Needed for FrontEnd specs
package 'libjpeg-devel' do
  action :install
end

# Needed for FrontEnd specs
package 'giflib-devel' do
  action :install
end

# Needed for unf_ext gem - g++/gcc
package 'gcc' do
  action :install
end

# Needed for unf_ext gem - g++/gcc
package 'gcc-c++' do
  action :install
end

# Needed for unf_ext gem - g++/gcc
package 'gcc-gfortran' do
  action :install
end
