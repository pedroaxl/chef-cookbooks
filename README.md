chef-cookbooks
==============

Those are the chef cookbooks I use in my projects, feel free to use it in case you also need some of them.

Just one or two were really created by myself, most of them were just customized.

I also include a tar file in this repo in case you want to set it with chef-solo.

vagrant with rails projects
=============

If you want to use this with Rails projects, included in this project there is my default Vagrantfile.

You just have to copy it to your Rails project and run vagrant provision. It should install all the environment and run a thin instance on your project.

To use it you just need "Virtual Box":https://www.virtualbox.org/ and "Vagrant":http://vagrantup.com/ installed.

generate the tar
==============

In case you want made some change in any of the files and want to regenerate the tar file to be downloaded, run the command above:

chef-solo.tar.gz --exclude='.git' --exclude='chef-solo.tar.gz' ./cookbooks
