FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.4.1 \
    MATOMO_CHECKSUM=94bee0b233b1f6cd3e858ab5b23bfa08bc592652828125ce7f00162216713cf8

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
