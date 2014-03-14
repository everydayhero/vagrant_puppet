groupmod -g 991 vboxsf
find /vagrant -gid 1000 -exec chgrp -h 991 '{}' \+
usermod -a -G ssh vagrant

rm /etc/hiera.yaml
ln -s /vagrant/puppet/hiera.yaml /etc/hiera.yaml

rm -rf /etc/puppet
ln -s /vagrant/puppet /etc/puppet
rm -f /vagrant/puppet/production
ln -s /etc/puppet /vagrant/puppet/production

apt-get update
apt-get install -y rubygems
gem install hiera-eyaml
