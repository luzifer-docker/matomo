FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.2.1 \
    MATOMO_CHECKSUM=5e7f4bb155a7d947e4db03570afa7429dd908058c9eae779a84c7c093a4855ea

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
