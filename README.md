# vsftpd-image

## Create a user with access to the directory

You can define your users in the Docker file as in the example below
```
RUN useradd username  -d /home && echo 'username:password_strign' | chpasswd
```

## Private key
Run the following code once to generate the private key. It is used for tls connection
```
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout config/ssl/private/vsftpd.pem -out config/ssl/private/vsftpd.pem
```

And end 
```
ducker compose up -d
```
