FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.2.0 \
    MATOMO_CHECKSUM=25df0921589c5f80986fd9deb5ee645ef605e5307760ccca282cd8edf1b5a01f

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
