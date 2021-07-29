FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.4.0 \
    MATOMO_CHECKSUM=18aed3d65ed7f9b424a464a04bfbff6faae463820dac345c97f3978fa4d7c7a0

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
