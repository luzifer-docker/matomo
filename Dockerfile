FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=3.13.2 \
    MATOMO_CHECKSUM=00959d09c6208fb79123b18c2c4925dd49d0c903a22043c6a941d5d59370e5a2

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
