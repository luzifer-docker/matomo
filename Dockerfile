FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=3.13.4 \
    MATOMO_CHECKSUM=6ae0b29b641635425c9210d81f03f2a3a7c6a0966fde017068b74296d04f1b54

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
