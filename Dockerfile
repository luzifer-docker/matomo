FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.11.0 \
    MATOMO_CHECKSUM=af548a0f3a890427446c506f804be3b390c01774ffccea921fc4a0237a02a745

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
