Vagrant Puppet
--------------

A vagrant config for building boxes with puppet locally.

Setup
-----

Install vagrant

[Installing Vagrant](https://docs.vagrantup.com/v2/installation/)

Clone the repo with --recursive

    hub clone everydayhero/vagrant_puppet --recursive

This clones the everydayhero/puppet repo into a subdir where vagrant can find it.

Building a Box
--------------

If your host isn't listed in Vagrantfile, add it to the hostnames array.
Currently the domain is hardcoded, but this will be extended to support all
environments properly.
Bring up your host (e.g. if your host was vm42):

    vagrant up vm42

this will bring up the box and the first time will provision it with puppet.
You can ssh to the box with

    vagrant ssh vm42

Once up, you can edit the puppet config in the puppet dir, and run

    vagrant provision vm42

to re-run puppet (see sudo issue below).
You can bring up multiple boxes at once.
To shut it down, you can

    vagrant halt vm42

and to delete the box and start fresh,

    vagrant destroy vm42

The Sudo config issue
---------------------

Our puppet config explicitly sets a sudo config which subsequently prevents vagrant ssh-ing to the box.
Once puppet has run, you'll need to run

    ./override_sudoers.sh

and vagrant will work again happily. This is a temp work around that we can fix properly later.

Making stuff work
-----------------

Because of encrypted content in eyamls, if you don't have the keys the node will fail. For now I have been
commenting out bits that I didn't need and didn't care to make work locally for a paricular node,
but we will work on proper solutions so this can be used seamlessly.
