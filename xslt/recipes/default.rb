#
# Cookbook Name:: xslt
# Recipe:: default
#
# Copyright 2012, Phil Cohen
#

package "libxslt-devel" do
  package_name value_for_platform(
    %w[centos redhat scientific suse fedora] => { "default" => "libxslt-devel" },
    "default" => "libxslt-dev"
  )
end
