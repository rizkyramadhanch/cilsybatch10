# How to use
## Preparation
1. make sure your current provisioner terminal can be sudo without password
visudo, insert below:
```
{username}     ALL=(ALL) NOPASSWD:ALL
```
2. make sure you already installed virtualbox >= 5.x


## Getting Started
1. start machines
```
vagrant up
```
2. select network adaptor you want to use.
3.
delete all machines by vagrant
```
for i in `vagrant global-status | grep virtualbox | awk '{ print $1 }'` ; do vagrant destroy $i ; done
```