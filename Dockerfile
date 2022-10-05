FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.12.0 \
    MATOMO_CHECKSUM=bd8b9808c79d41ca3c9641bc003b9d2034b784585c011814bc76d56c017cf8d3

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
