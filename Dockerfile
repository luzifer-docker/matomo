FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.13.3 \
    MATOMO_CHECKSUM=1aa799b4fbc111f124f00e65d8979bc7f246be446dee012c1f313a800b5aa365

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
