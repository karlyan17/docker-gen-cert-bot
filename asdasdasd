FROM alpine/base
RUN apk update \
    && apk upgrade \
    && apk add haproxy
ENTRYPOINT ["/usr/sbin/haproxy", "-W", "-db"]
CMD ["-f", "/etc/haproxy/haproxy.cfg"]
