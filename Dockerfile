FROM alpine/docker-gen

RUN apk update \
    && apk upgrade \
    && apk add certbot docker-compose

RUN mkdir /compose /crt /etc/letsencrypt/

ADD entrypoint.sh /entrypoint.sh
ADD certbot-create.sh /certbot-create.sh
ADD certbot-clean.sh /certbot-clean.sh
ADD certbot-auth.sh /certbot-auth.sh
ADD certbot-renew.sh /certbot-renew.sh
ADD docker-gen.cfg /etc/docker-gen/docker-gen.cfg
ADD templates /etc/docker-gen/templates

ENTRYPOINT ["/entrypoint.sh"]
