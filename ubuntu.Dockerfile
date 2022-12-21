FROM ubuntu:22.04

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y vsftpd
COPY config/ubuntu.vsftpd.conf /etc/vsftpd.conf
RUN chown -R www-data:www-data /home/
CMD service vsftpd start; bash
