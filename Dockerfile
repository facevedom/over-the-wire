FROM alpine:3.3

ENV PACKAGES "openssh-client gnupg bash sshpass"
RUN apk add --update $PACKAGES && rm -rf /var/cache/apk/*
RUN mkdir -p /root/.ssh

ADD . /opt/over-the-wire/
WORKDIR /opt/over-the-wire/1-Bandit
ENTRYPOINT ["./hack_away.sh"]
