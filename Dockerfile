FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.1.0 \
    MATOMO_CHECKSUM=d38c782428a46296dd61e59ce72c69e7e02cda2b7bdf839e9cc71e975a18a816

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
