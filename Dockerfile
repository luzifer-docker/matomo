FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.0.3 \
    MATOMO_CHECKSUM=ac2ad4202c211b28d3d97bcca3c179268436289378027a4a526fc15332e2b55d

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
