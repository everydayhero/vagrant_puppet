SSH_PORT=$1
if [ -z $SSH_PORT ]; then
  SSH_PORT=2222
fi
ssh vagrant@localhost -p $SSH_PORT -t "sudo cp /vagrant/sudoers /etc/sudoers"
