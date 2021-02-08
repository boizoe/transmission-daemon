FROM alpine:3.12

RUN apk add --no-cache --update \
    transmission-daemon

EXPOSE 9091 59863 59863/udp
VOLUME /var/lib/transmission/.config

USER transmission

ENTRYPOINT ["/usr/bin/transmission-daemon", "--foreground"]
