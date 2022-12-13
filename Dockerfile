FROM nitrocc/vsftpd:alpine

# Add ftp user
RUN adduser --home /home/academy academy;echo 'academy:11223345' | chpasswd
