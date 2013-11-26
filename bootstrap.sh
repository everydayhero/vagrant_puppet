sudo groupmod -g 991 vboxsf
sudo find /vagrant -gid 1000 -exec chgrp -h 991 '{}' \+
sudo usermod -a -G ssh vagrant

rm /etc/hiera.yaml
ln -s /vagrant/puppet/hiera.yaml /etc/hiera.yaml

rm -rf /etc/puppet
ln -s /vagrant/puppet /etc/puppet
