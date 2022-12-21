FROM nitrocc/vsftpd:ubuntu

RUN chown -R www-data:www-data /home
# Add ftp users

