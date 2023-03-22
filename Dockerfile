FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.14.1 \
    MATOMO_CHECKSUM=c46d1a57c523529d18a71ef80634f07e48a454088beff98f81c0b3d2216601f3

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
