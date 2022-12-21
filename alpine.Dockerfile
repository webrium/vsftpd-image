FROM alpine:3.17

RUN apk update && apk upgrade
RUN apk add vsftpd
COPY config/alpine.vsftpd.conf /etc/vsftpd.conf
CMD chgrp www-data -R /home/
CMD vsftpd
