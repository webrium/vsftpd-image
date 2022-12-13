FROM ubuntu:22.04

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y vsftpd
COPY config/ubuntu.vsftpd.conf /etc/vsftpd.conf

CMD service vsftpd start; bash
