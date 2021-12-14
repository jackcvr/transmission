FROM alpine:latest

RUN mkdir -p /data/downloads /data/incompelete /data/watch \
    && apk add --no-cache transmission-daemon

COPY settings.json /etc/transmission-daemon/settings.json

CMD transmission-daemon --foreground --log-info --config-dir /etc/transmission-daemon
