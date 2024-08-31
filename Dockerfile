FROM alpine

RUN apk add --no-cache --update \
    transmission-cli \
    transmission-daemon \
    transmission-remote

EXPOSE 9091 59863 59863/udp
VOLUME /var/lib/transmission/.config

USER transmission

ENTRYPOINT ["/usr/bin/transmission-daemon", "--foreground"]
