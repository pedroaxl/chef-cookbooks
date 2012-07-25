maintainer       "Phil Cohen"
maintainer_email "github@phlippers.net"
license          "MIT"
description      "Installs libxslt"
long_description "Please refer to README.md"
version          "1.0.0"

recipe "xslt", "Installs libxslt development packages"

%w[centos redhat scientific suse fedora ubuntu debian].each do |os|
  supports os
end
