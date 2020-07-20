FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=3.14.0 \
    MATOMO_CHECKSUM=bcde64eee7e8e8808cd86fc0e7ed9b02e7cc8b39eb78395305e1128224ef5cfc

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
