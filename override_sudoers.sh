SSH_PORT=$1
if [ -z $SSH_PORT ]; then
  SSH_PORT=2222
fi
echo "Enter password 'vagrant' when prompted:"
ssh vagrant@localhost -p $SSH_PORT -t "sudo cp /vagrant/sudoers /etc/sudoers" && echo "Sudo access to your vagrant box has been restored."
