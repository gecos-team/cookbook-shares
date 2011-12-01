maintainer       "Juanje Ojeda"
maintainer_email "jojeda@emergya.com"
license          "GPL v2"
description      "Set the remote resources to be mounted"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.9"
depends          "conf"
recipe           "chares", "Set the remote resource to be mounted"
%w{ ubuntu debian arch rhel centos fedora }.each do |os|
  supports os
end

attribute 'user',
  :display_name => "User name",
  :description  => "Unix name of the user to add or remove the remote resource"
  :type         => "string",
  :required     => "required"

attribute 'share',
  :display_name => "Share: remote resource",
  :description  => "The remote resource's URI and the action to be perfomed: add or remove"
  :type         => "array",
  :required     => "required"

