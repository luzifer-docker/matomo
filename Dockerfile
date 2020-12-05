FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.0.4 \
    MATOMO_CHECKSUM=b8758bf8e0dc677427300110e545b33000e3aca2f301901b90f616e5ee1d3045

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
