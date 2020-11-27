FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.0.2 \
    MATOMO_CHECKSUM=1ae6fc2437f483af4d7de41d4f48d87d0f723a146afa76a150808a513d91de12

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
