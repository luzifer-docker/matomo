FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.10.1 \
    MATOMO_CHECKSUM=9ec589d3e0b9280a697a355da26bd05e6dbb18b24388ddef604ef7b69eced82a

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
