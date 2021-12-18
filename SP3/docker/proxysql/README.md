Run
To run a ProxySQL container with a custom ProxySQL configuration file:
if you have trouble about file sharing, try to reconfigure it via docker desktop on windows or mac.
```
$ docker run -p 16032:6032 -p 16033:6033 -p 16070:6070 -d -v /path/to/proxysql.cnf:/etc/proxysql.cnf proxysql/proxysql
```

Sample config file (i.e. /path/to/proxysql.cnf listed above)
The following basic configuration file should be sufficient for development purposes, this configuration will allow you to connect to your ProxySQL Docker container remotely using the second pair of admin_credentials e.g.:
```
mysql -h127.0.0.1 -P16032 -uradmin -pradmin --prompt "ProxySQL Admin>"
```
