FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.0.5 \
    MATOMO_CHECKSUM=19e08d9aa0ca4619018ef5b9018f53f9cfdcf76ac5ad4a9b280d5ed3560f3ab5

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
