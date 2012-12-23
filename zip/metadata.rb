maintainer       "Pedro Axelrud"
maintainer_email "pedroaxl@gmail.com"
license          "MIT"
description      "Installs zip"
long_description "Please refer to README.md"
version          "0.0.1"

recipe "zip", "Installs zip"

%w[ubuntu debian].each do |os|
  supports os
end
