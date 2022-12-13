FROM nitrocc/vsftpd:alpine

#RUN useradd username  -d /home && echo 'username:password_strign' | chpasswd

# Alpine
RUN adduser --home /home/academy academy;echo 'academy:11223345' | chpasswd
