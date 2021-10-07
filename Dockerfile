FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.5.0 \
    MATOMO_CHECKSUM=f75e103011830204175df0be99bd207f81ea2fde7bd4924b47f3e641ad38e779

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
