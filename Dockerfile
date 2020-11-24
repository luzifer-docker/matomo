FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.0.0 \
    MATOMO_CHECKSUM=b30374c4ba1db060e63c942bdc7f8d84efc6a4bdb55fbdc02a88076450fe7348

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
