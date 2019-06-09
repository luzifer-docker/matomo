FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=3.9.0 \
    MATOMO_CHECKSUM=xxx

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
