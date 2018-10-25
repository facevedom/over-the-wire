FROM kinogmt/centos-ssh
ADD * /opt/over-the-wire/
RUN yum install -y sshpass
WORKDIR /opt/over-the-wire
ENTRYPOINT ["./hack_away.sh"]