in this page you learn how to provision kubernetes cluster with some requirements: 
```
1.proper laptop spec (x86_x64) architecture with minimum spec (core i5 and 16gb memory 250gb disk)
2.virtualbox
3.vagrant
4.ansible
```

steps:
1. go to directory:
```
cd SP3/kubernetes
```
2. you can verify files and folder should be exist
```
kubernetes-setup
Vagrantfile
```
3. run vagrant command, it will provision vm on virtualbox, then it will execut ansible_playbook file:
```
vagrant up
```
4. wait until the process create kubernetes cluster with 1 master and 3 nodes.

compiled by rizkyramadhan