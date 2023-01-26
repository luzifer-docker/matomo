FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.13.2 \
    MATOMO_CHECKSUM=672d4619216f58d3d0a7fab3765bbb6422c88b1b343ec56c45e2bf102c2d0777

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
