#!/bin/bash:wq

# Start all the things 
echo Starting Nomad using Server + Client file
cd ~
cp /vagrant/server-west.hcl /etc/nomad.d/nomad-server-b-2.hcl
sudo nohup nomad agent -config /etc/nomad.d/nomad-server-b-2.hcl &>nomad.log  &

echo Joining cluster
cd ~
sudo nohup nomad server join 172.16.1.201