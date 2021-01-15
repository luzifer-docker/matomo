FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.1.1 \
    MATOMO_CHECKSUM=1e2ce7687b7ac05b20f6c08fe6a242b6aebd73ce84a16846277928342d686bef

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
