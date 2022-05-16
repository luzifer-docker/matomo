FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.10.0 \
    MATOMO_CHECKSUM=da3302e3a551ecb9f5d5c7a2b3f715dcabcfd689002db0409e3c7b9df3dc21fe

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
