FROM jwilder/docker-gen

RUN apk update \
    && apk add acme-client libressl \

ENTRYPOINT ["/bin/sh"]
