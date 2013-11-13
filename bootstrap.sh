rm /etc/hiera.yaml
ln -s /vagrant/puppet/hiera.yaml /etc/hiera.yaml

rm -rf /etc/puppet
ln -s /vagrant/puppet /etc/puppet
