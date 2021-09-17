Learn learn how to automate deployment on local environment with some requirements;
1. Laptop x86_x64 architecture
2. linux os
3. vagrant

in this page you will learn how to deploy web php application with some instances provision, folow these steps:
1. make sure you are in the right folder
```
cd SP1/vagrant
```
2. before you start, you can verify structure folders and files about logic provision infrastructure and deployment apps.
```
.
├── README.md
├── Vagrantfile
├── shellscript
│   ├── database.sh
│   └── webserver.sh
├── ubuntu-bionic-18.04-cloudimg-console.log
└── ubuntu-xenial-16.04-cloudimg-console.log
```
3. then you can vagrant command
```
vagrant up
```

Compiled by Rizky Ramadhan
Lead Devops @bareksa.com
references:
https://www.yourtechy.com/technology/mysql-server-vagrant-virtualbox/
