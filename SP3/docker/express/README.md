# how to
```
npm start
```

```
npm install --save mysql body-parser
```
make sure u have install mysql or mariadb server
give permission on database mysql to
```
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '<password>';
flush privileges;
```

run image with docker
```
docker run -it -d --name nodejs -p 8080:3000 nodejs_api
```