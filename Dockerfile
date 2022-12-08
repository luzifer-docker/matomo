FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.13.0 \
    MATOMO_CHECKSUM=30804b4c79854b7580af3071467ac9f0ef34b9b736c97b21a698c47266b46104

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
