FROM alpine/docker-gen

RUN apk update \
    && apk upgrade \
    && apk add certbot docker-compose

RUN mkdir /compose

ADD docker-gen.cfg /etc/docker-gen/docker-gen.cfg
ADD templates /etc/docker-gen/templates

# ENTRYPOINT ["/bin/ash"]
ENTRYPOINT ["docker-gen", "-config", "/etc/docker-gen/docker-gen.cfg"]
