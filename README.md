# vsftpd-image

## Create a user with access to the directory

You can define your users in the Docker file as in the example below

### Ubuntu
```
RUN useradd username -g www-data -d /home && echo 'username:password_strign' | chpasswd
```


## Private key
Run the following code once to generate the private key. It is used for tls connection
```
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout config/ssl/private/vsftpd.pem -out config/ssl/private/vsftpd.pem
```

docker-compose.yml:
```
services:
 ftp:
  tty: true
  build:
   context: .
   dockerfile: Dockerfile
  ports:
   - 20:20
   - 21:21
   - 1024-1048:1024-1048
  volumes:
    - /home/data:/home/
    - ./config/ssl/private/vsftpd.pem:/etc/ssl/private/vsftpd.pem
```

Dockerfile:
```
FROM nitrocc/vsftpd:alpine

RUN adduser --home /home username;echo 'username:password_strign' | chpasswd
```

And end 
```
docker compose up -d
```
