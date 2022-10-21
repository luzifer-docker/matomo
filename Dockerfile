FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.12.2 \
    MATOMO_CHECKSUM=9ee44ad501ad078c0c384c6e4e97e286c6aa076aa9af65edbc47205f4028f950

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
