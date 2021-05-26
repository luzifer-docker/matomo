FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.3.1 \
    MATOMO_CHECKSUM=8d06cc2fa08de2fc4b791394d0f586100587e7cf658a5e04b8926304f859e18b

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
