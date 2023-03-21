FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.14.0 \
    MATOMO_CHECKSUM=e1e5f8f8ddd338e089e46aec2e766e2f92279894575291a585e05849a214b1a3

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
