FROM centos:7
#FROM ubuntu:14.04
MAINTAINER The CentOS Project <cloud-ops@centos.org>

RUN yum update -y && yum -y install openssh-server openssh-clients epel-release bind-utils
RUN yum -y install msmtp
RUN mkdir /var/run/sshd /etc/msmtp /var/log/msmtp
RUN chmod 777 /var/log/msmtp

#All useradding and keygeneration handled by userkey.sh
ADD keys /root/keys
ADD files/userkey.sh /root/userkey.sh
# Copy/Paste this for each individual user
RUN /root/userkey.sh <username>

#Setup Email
ADD files/*citex0 /etc/msmtp/
ADD files/login-mail.sh /root/login-mail.sh
ADD files/bash-rc /root/bash-rc
ADD files/setup-email.sh /root/setup-email.sh
RUN /root/setup-email.sh david

#sshd complians if the host keys don't exist.
RUN yes|ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa
RUN yes|ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa

Expose 22

#Entrypoint [ "/usr/sbin/sshd"]
CMD ["/usr/sbin/sshd", "-D"]

#Send mail to Gmail
#Epel
#msmtp

