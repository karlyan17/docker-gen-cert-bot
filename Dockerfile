FROM alpine/docker-gen

RUN apk update \
    && apk upgrade \
    && apk add certbot

ADD docker-gen.cfg /etc/docker-gen/docker-gen.cfg
ADD templates /etc/docker-gen/

ENTRYPOINT ["/bin/sh"]
