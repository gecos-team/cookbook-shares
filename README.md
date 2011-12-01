Description
===========

This cookbok install a policy of shares (network shared directories)
to a specific user of a node.

The cookbook add to (or remove from) the $HOME/.gtk-bookmarks bookmarks
to be mounted remotely by the node.

This will work just for GNOME desktops, so OS where you can run GNOME.

Requirements
============

Attributes
==========

* `node['user']` - Name of the user to apply the policies
* `node['shares']` - List of shares and actions. Actions can be :add or :remove

Example:

```
default[:user] = "juan"
default[:shares] = [
                    {:uri => 'smb://machine_one/path/to/the/directory', :action => :add},
                    {:uri => 'smb://remote_host_B/path/Shared',         :action => :add},
                    {:uri => 'nfs://server_nfs/isos/',                  :action => :remove}
                   ]
```

Usage
=====

