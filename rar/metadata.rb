maintainer       "Pedro Axelrud"
maintainer_email "pedroaxl@gmail.com"
license          "MIT"
description      "Installs rar"
long_description "Please refer to README.md"
version          "0.0.1"

recipe "rar", "Installs rar"

%w[ubuntu debian].each do |os|
  supports os
end
