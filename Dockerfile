FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.12.1 \
    MATOMO_CHECKSUM=28785042ca4a20782f564000a43f7e0fdccf2b9757985d0b37758ef7783039c7

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
